; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mipsnbsd-tdep.c_mipsnbsd_fill_fpreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mipsnbsd-tdep.c_mipsnbsd_fill_fpreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@FP0_REGNUM = common dso_local global i32 0, align 4
@current_gdbarch = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mipsnbsd_fill_fpreg(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @FP0_REGNUM, align 4
  store i32 %6, i32* %5, align 4
  br label %7

7:                                                ; preds = %38, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @current_gdbarch, align 4
  %10 = call %struct.TYPE_2__* @mips_regnum(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sle i32 %8, %12
  br i1 %13, label %14, label %41

14:                                               ; preds = %7
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %37

21:                                               ; preds = %18, %14
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @CANNOT_STORE_REGISTER(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = load i8*, i8** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @FP0_REGNUM, align 4
  %30 = sub nsw i32 %28, %29
  %31 = load i32, i32* @current_gdbarch, align 4
  %32 = call i32 @mips_regsize(i32 %31)
  %33 = mul nsw i32 %30, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %27, i64 %34
  %36 = call i32 @regcache_collect(i32 %26, i8* %35)
  br label %37

37:                                               ; preds = %25, %21, %18
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %7

41:                                               ; preds = %7
  ret void
}

declare dso_local %struct.TYPE_2__* @mips_regnum(i32) #1

declare dso_local i32 @CANNOT_STORE_REGISTER(i32) #1

declare dso_local i32 @regcache_collect(i32, i8*) #1

declare dso_local i32 @mips_regsize(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
