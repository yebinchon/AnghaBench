; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2-fde.c___register_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2-fde.c___register_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__register_frame(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.object*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to i64*
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %14

9:                                                ; preds = %1
  %10 = call %struct.object* @malloc(i32 4)
  store %struct.object* %10, %struct.object** %3, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = load %struct.object*, %struct.object** %3, align 8
  %13 = call i32 @__register_frame_info(i8* %11, %struct.object* %12)
  br label %14

14:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.object* @malloc(i32) #1

declare dso_local i32 @__register_frame_info(i8*, %struct.object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
