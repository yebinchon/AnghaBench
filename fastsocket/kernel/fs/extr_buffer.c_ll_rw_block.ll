; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c_ll_rw_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c_ll_rw_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }

@SWRITE = common dso_local global i32 0, align 4
@SWRITE_SYNC = common dso_local global i32 0, align 4
@SWRITE_SYNC_PLUG = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@end_buffer_write_sync = common dso_local global i32 0, align 4
@WRITE_SYNC = common dso_local global i32 0, align 4
@end_buffer_read_sync = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ll_rw_block(i32 %0, i32 %1, %struct.buffer_head** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer_head**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.buffer_head** %2, %struct.buffer_head*** %6, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %95, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %98

13:                                               ; preds = %9
  %14 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %14, i64 %16
  %18 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  store %struct.buffer_head* %18, %struct.buffer_head** %8, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @SWRITE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %30, label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @SWRITE_SYNC, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @SWRITE_SYNC_PLUG, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26, %22, %13
  %31 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %32 = call i32 @lock_buffer(%struct.buffer_head* %31)
  br label %39

33:                                               ; preds = %26
  %34 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %35 = call i32 @trylock_buffer(%struct.buffer_head* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  br label %95

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38, %30
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @WRITE, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %55, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @SWRITE, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %55, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @SWRITE_SYNC, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @SWRITE_SYNC_PLUG, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %78

55:                                               ; preds = %51, %47, %43, %39
  %56 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %57 = call i64 @test_clear_buffer_dirty(%struct.buffer_head* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %55
  %60 = load i32, i32* @end_buffer_write_sync, align 4
  %61 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %62 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %64 = call i32 @get_bh(%struct.buffer_head* %63)
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @SWRITE_SYNC, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %59
  %69 = load i32, i32* @WRITE_SYNC, align 4
  %70 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %71 = call i32 @submit_bh(i32 %69, %struct.buffer_head* %70)
  br label %76

72:                                               ; preds = %59
  %73 = load i32, i32* @WRITE, align 4
  %74 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %75 = call i32 @submit_bh(i32 %73, %struct.buffer_head* %74)
  br label %76

76:                                               ; preds = %72, %68
  br label %95

77:                                               ; preds = %55
  br label %92

78:                                               ; preds = %51
  %79 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %80 = call i32 @buffer_uptodate(%struct.buffer_head* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %91, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* @end_buffer_read_sync, align 4
  %84 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %85 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %87 = call i32 @get_bh(%struct.buffer_head* %86)
  %88 = load i32, i32* %4, align 4
  %89 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %90 = call i32 @submit_bh(i32 %88, %struct.buffer_head* %89)
  br label %95

91:                                               ; preds = %78
  br label %92

92:                                               ; preds = %91, %77
  %93 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %94 = call i32 @unlock_buffer(%struct.buffer_head* %93)
  br label %95

95:                                               ; preds = %92, %82, %76, %37
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  br label %9

98:                                               ; preds = %9
  ret void
}

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @trylock_buffer(%struct.buffer_head*) #1

declare dso_local i64 @test_clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @submit_bh(i32, %struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
