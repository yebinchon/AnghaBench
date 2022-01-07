; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_auth.c_param_set_hashtbl_sz.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_auth.c_param_set_hashtbl_sz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_param = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@MAX_HASHTABLE_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.kernel_param*)* @param_set_hashtbl_sz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @param_set_hashtbl_sz(i8* %0, %struct.kernel_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.kernel_param*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.kernel_param* %1, %struct.kernel_param** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %45

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @strict_strtoul(i8* %13, i32 0, i64* %6)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %45

20:                                               ; preds = %12
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @fls(i64 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i64, i64* %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = shl i32 1, %24
  %26 = zext i32 %25 to i64
  %27 = icmp ugt i64 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i32, i32* %7, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %28, %20
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @MAX_HASHTABLE_BITS, align 4
  %34 = icmp ugt i32 %32, %33
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  %37 = icmp ult i32 %36, 2
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %31
  br label %45

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.kernel_param*, %struct.kernel_param** %5, align 8
  %42 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i32*
  store i32 %40, i32* %44, align 4
  store i32 0, i32* %3, align 4
  br label %48

45:                                               ; preds = %38, %19, %11
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %45, %39
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @strict_strtoul(i8*, i32, i64*) #1

declare dso_local i32 @fls(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
