; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_io.c_ubifs_write_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_io.c_ubifs_write_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, i32, i64 }
%struct.ubifs_ch = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"LEB %d:%d, %s, length %d (aligned %d)\00", align 1
@EROFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"cannot write %d bytes to LEB %d:%d, error %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_write_node(%struct.ubifs_info* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubifs_info*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %18 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @ALIGN(i32 %16, i32 %19)
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %12, align 4
  %23 = load i8*, i8** %9, align 8
  %24 = bitcast i8* %23 to %struct.ubifs_ch*
  %25 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dbg_ntype(i32 %26)
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %15, align 4
  %30 = call i32 @dbg_io(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22, i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* %11, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %6
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %36 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* %12, align 4
  %41 = icmp sge i32 %40, 0
  br label %42

42:                                               ; preds = %39, %33, %6
  %43 = phi i1 [ false, %33 ], [ false, %6 ], [ %41, %39 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @ubifs_assert(i32 %44)
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %48 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = srem i32 %46, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %42
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %55 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br label %58

58:                                               ; preds = %52, %42
  %59 = phi i1 [ false, %42 ], [ %57, %52 ]
  %60 = zext i1 %59 to i32
  %61 = call i32 @ubifs_assert(i32 %60)
  %62 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %63 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load i32, i32* @EROFS, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %7, align 4
  br label %97

69:                                               ; preds = %58
  %70 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @ubifs_prepare_node(%struct.ubifs_info* %70, i8* %71, i32 %72, i32 1)
  %74 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %75 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i8*, i8** %9, align 8
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @ubi_leb_write(i32 %76, i32 %77, i8* %78, i32 %79, i32 %80, i32 %81)
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %69
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %14, align 4
  %90 = call i32 @ubifs_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %87, i32 %88, i32 %89)
  %91 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = call i32 @dbg_dump_node(%struct.ubifs_info* %91, i8* %92)
  %94 = call i32 (...) @dbg_dump_stack()
  br label %95

95:                                               ; preds = %85, %69
  %96 = load i32, i32* %14, align 4
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %95, %66
  %98 = load i32, i32* %7, align 4
  ret i32 %98
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @dbg_io(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dbg_ntype(i32) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @ubifs_prepare_node(%struct.ubifs_info*, i8*, i32, i32) #1

declare dso_local i32 @ubi_leb_write(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ubifs_err(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dbg_dump_node(%struct.ubifs_info*, i8*) #1

declare dso_local i32 @dbg_dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
