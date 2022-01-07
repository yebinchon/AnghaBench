; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libmudflap/extr_mf-runtime.c_write_itoa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libmudflap/extr_mf-runtime.c_write_itoa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @write_itoa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_itoa(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [16 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %38, %2
  %10 = load i32, i32* %6, align 4
  %11 = icmp ult i32 %10, 15
  br i1 %11, label %12, label %41

12:                                               ; preds = %9
  %13 = load i32, i32* %4, align 4
  %14 = urem i32 %13, 10
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = add i32 %15, 48
  %17 = trunc i32 %16 to i8
  %18 = load i32, i32* %6, align 4
  %19 = sub i32 14, %18
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 %20
  store i8 %17, i8* %21, align 1
  %22 = load i32, i32* %4, align 4
  %23 = udiv i32 %22, 10
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %12
  %27 = load i32, i32* %6, align 4
  %28 = sub i32 14, %27
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 %29
  store i8* %30, i8** %8, align 8
  %31 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 15
  store i8 0, i8* %31, align 1
  %32 = load i32, i32* %3, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = call i32 @write(i32 %32, i8* %33, i32 %35)
  br label %41

37:                                               ; preds = %12
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %6, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %9

41:                                               ; preds = %26, %9
  ret void
}

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
