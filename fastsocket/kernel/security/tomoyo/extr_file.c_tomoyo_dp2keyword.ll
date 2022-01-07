; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_file.c_tomoyo_dp2keyword.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_file.c_tomoyo_dp2keyword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TOMOYO_MAX_DOUBLE_PATH_OPERATION = common dso_local global i64 0, align 8
@tomoyo_dp_keyword = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tomoyo_dp2keyword(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* @TOMOYO_MAX_DOUBLE_PATH_OPERATION, align 8
  %5 = icmp ult i64 %3, %4
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i8**, i8*** @tomoyo_dp_keyword, align 8
  %8 = load i64, i64* %2, align 8
  %9 = getelementptr inbounds i8*, i8** %7, i64 %8
  %10 = load i8*, i8** %9, align 8
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %6
  %13 = phi i8* [ %10, %6 ], [ null, %11 ]
  ret i8* %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
