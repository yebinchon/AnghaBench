; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c_mips_mach_extends_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c_mips_mach_extends_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@TRUE = common dso_local global i8* null, align 8
@bfd_mach_mipsisa32 = common dso_local global i64 0, align 8
@bfd_mach_mipsisa64 = common dso_local global i64 0, align 8
@bfd_mach_mipsisa32r2 = common dso_local global i64 0, align 8
@bfd_mach_mipsisa64r2 = common dso_local global i64 0, align 8
@mips_mach_extensions = common dso_local global %struct.TYPE_3__* null, align 8
@FALSE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i64)* @mips_mach_extends_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mips_mach_extends_p(i64 %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i8*, i8** @TRUE, align 8
  store i8* %11, i8** %3, align 8
  br label %66

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @bfd_mach_mipsisa32, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = load i64, i64* @bfd_mach_mipsisa64, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i8* @mips_mach_extends_p(i64 %17, i64 %18)
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i8*, i8** @TRUE, align 8
  store i8* %22, i8** %3, align 8
  br label %66

23:                                               ; preds = %16, %12
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @bfd_mach_mipsisa32r2, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load i64, i64* @bfd_mach_mipsisa64r2, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i8* @mips_mach_extends_p(i64 %28, i64 %29)
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i8*, i8** @TRUE, align 8
  store i8* %33, i8** %3, align 8
  br label %66

34:                                               ; preds = %27, %23
  store i64 0, i64* %6, align 8
  br label %35

35:                                               ; preds = %61, %34
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mips_mach_extensions, align 8
  %38 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %37)
  %39 = icmp ult i64 %36, %38
  br i1 %39, label %40, label %64

40:                                               ; preds = %35
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mips_mach_extensions, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %41, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %40
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mips_mach_extensions, align 8
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %5, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* %4, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i8*, i8** @TRUE, align 8
  store i8* %58, i8** %3, align 8
  br label %66

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59, %40
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %6, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %6, align 8
  br label %35

64:                                               ; preds = %35
  %65 = load i8*, i8** @FALSE, align 8
  store i8* %65, i8** %3, align 8
  br label %66

66:                                               ; preds = %64, %57, %32, %21, %10
  %67 = load i8*, i8** %3, align 8
  ret i8* %67
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
