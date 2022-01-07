; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-tdep.c_find_func_descr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-tdep.c_find_func_descr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IA64_GR1_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64*)* @find_func_descr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_func_descr(i64 %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [16 x i8], align 16
  store i64 %0, i64* %3, align 8
  store i64* %1, i64** %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @find_extant_func_descr(i64 %8)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %2
  %13 = load i64*, i64** %4, align 8
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  %15 = load i64*, i64** %4, align 8
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, 16
  store i64 %17, i64* %15, align 8
  %18 = load i64, i64* %3, align 8
  %19 = call i64 @FIND_GLOBAL_POINTER(i64 %18)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %12
  %23 = load i32, i32* @IA64_GR1_REGNUM, align 4
  %24 = call i64 @read_register(i32 %23)
  store i64 %24, i64* %6, align 8
  br label %25

25:                                               ; preds = %22, %12
  %26 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @store_unsigned_integer(i8* %26, i32 8, i64 %27)
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %30 = getelementptr inbounds i8, i8* %29, i64 8
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @store_unsigned_integer(i8* %30, i32 8, i64 %31)
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %35 = call i32 @write_memory(i64 %33, i8* %34, i32 16)
  br label %36

36:                                               ; preds = %25, %2
  %37 = load i64, i64* %5, align 8
  ret i64 %37
}

declare dso_local i64 @find_extant_func_descr(i64) #1

declare dso_local i64 @FIND_GLOBAL_POINTER(i64) #1

declare dso_local i64 @read_register(i32) #1

declare dso_local i32 @store_unsigned_integer(i8*, i32, i64) #1

declare dso_local i32 @write_memory(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
