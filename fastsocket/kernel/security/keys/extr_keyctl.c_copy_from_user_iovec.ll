; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_keyctl.c_copy_from_user_iovec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_keyctl.c_copy_from_user_iovec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i32, i32 }

@EFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, %struct.iovec*, i32)* @copy_from_user_iovec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @copy_from_user_iovec(i8* %0, %struct.iovec* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iovec*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.iovec* %1, %struct.iovec** %6, align 8
  store i32 %2, i32* %7, align 4
  br label %8

8:                                                ; preds = %33, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp ugt i32 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %8
  %12 = load i8*, i8** %5, align 8
  %13 = load %struct.iovec*, %struct.iovec** %6, align 8
  %14 = getelementptr inbounds %struct.iovec, %struct.iovec* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.iovec*, %struct.iovec** %6, align 8
  %17 = getelementptr inbounds %struct.iovec, %struct.iovec* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @copy_from_user(i8* %12, i32 %15, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %11
  %22 = load i64, i64* @EFAULT, align 8
  %23 = sub nsw i64 0, %22
  store i64 %23, i64* %4, align 8
  br label %37

24:                                               ; preds = %11
  %25 = load %struct.iovec*, %struct.iovec** %6, align 8
  %26 = getelementptr inbounds %struct.iovec, %struct.iovec* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = sext i32 %27 to i64
  %30 = getelementptr i8, i8* %28, i64 %29
  store i8* %30, i8** %5, align 8
  %31 = load %struct.iovec*, %struct.iovec** %6, align 8
  %32 = getelementptr inbounds %struct.iovec, %struct.iovec* %31, i32 1
  store %struct.iovec* %32, %struct.iovec** %6, align 8
  br label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %7, align 4
  %35 = add i32 %34, -1
  store i32 %35, i32* %7, align 4
  br label %8

36:                                               ; preds = %8
  store i64 0, i64* %4, align 8
  br label %37

37:                                               ; preds = %36, %21
  %38 = load i64, i64* %4, align 8
  ret i64 %38
}

declare dso_local i64 @copy_from_user(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
