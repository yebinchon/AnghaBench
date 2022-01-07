; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_direct-io.c_dio_send_cur_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_direct-io.c_dio_send_cur_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dio = type { i32 }
%struct.dio_submit = type { i64, i64, i64, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.buffer_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dio*, %struct.dio_submit*, %struct.buffer_head*)* @dio_send_cur_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dio_send_cur_page(%struct.dio* %0, %struct.dio_submit* %1, %struct.buffer_head* %2) #0 {
  %4 = alloca %struct.dio*, align 8
  %5 = alloca %struct.dio_submit*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.dio* %0, %struct.dio** %4, align 8
  store %struct.dio_submit* %1, %struct.dio_submit** %5, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %11 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %10, i32 0, i32 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %53

14:                                               ; preds = %3
  %15 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %16 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %8, align 8
  %18 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %19 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %22 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %21, i32 0, i32 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %20, %25
  store i64 %26, i64* %9, align 8
  %27 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %28 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %31 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %14
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34, %14
  %39 = load %struct.dio*, %struct.dio** %4, align 8
  %40 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %41 = call i32 @dio_bio_submit(%struct.dio* %39, %struct.dio_submit* %40)
  br label %52

42:                                               ; preds = %34
  %43 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %44 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.dio*, %struct.dio** %4, align 8
  %49 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %50 = call i32 @dio_bio_submit(%struct.dio* %48, %struct.dio_submit* %49)
  br label %51

51:                                               ; preds = %47, %42
  br label %52

52:                                               ; preds = %51, %38
  br label %53

53:                                               ; preds = %52, %3
  %54 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %55 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %54, i32 0, i32 4
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = icmp eq %struct.TYPE_2__* %56, null
  br i1 %57, label %58, label %70

58:                                               ; preds = %53
  %59 = load %struct.dio*, %struct.dio** %4, align 8
  %60 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %61 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %62 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %65 = call i32 @dio_new_bio(%struct.dio* %59, %struct.dio_submit* %60, i64 %63, %struct.buffer_head* %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  br label %96

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69, %53
  %71 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %72 = call i32 @dio_bio_add_page(%struct.dio_submit* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %95

74:                                               ; preds = %70
  %75 = load %struct.dio*, %struct.dio** %4, align 8
  %76 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %77 = call i32 @dio_bio_submit(%struct.dio* %75, %struct.dio_submit* %76)
  %78 = load %struct.dio*, %struct.dio** %4, align 8
  %79 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %80 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %81 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %84 = call i32 @dio_new_bio(%struct.dio* %78, %struct.dio_submit* %79, i64 %82, %struct.buffer_head* %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %74
  %88 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %89 = call i32 @dio_bio_add_page(%struct.dio_submit* %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i32
  %93 = call i32 @BUG_ON(i32 %92)
  br label %94

94:                                               ; preds = %87, %74
  br label %95

95:                                               ; preds = %94, %70
  br label %96

96:                                               ; preds = %95, %68
  %97 = load i32, i32* %7, align 4
  ret i32 %97
}

declare dso_local i32 @dio_bio_submit(%struct.dio*, %struct.dio_submit*) #1

declare dso_local i32 @dio_new_bio(%struct.dio*, %struct.dio_submit*, i64, %struct.buffer_head*) #1

declare dso_local i32 @dio_bio_add_page(%struct.dio_submit*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
