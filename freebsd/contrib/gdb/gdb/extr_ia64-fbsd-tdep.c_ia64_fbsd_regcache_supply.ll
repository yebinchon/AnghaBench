; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-fbsd-tdep.c_ia64_fbsd_regcache_supply.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-fbsd-tdep.c_ia64_fbsd_regcache_supply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regcache = type { i32 }

@NUM_REGS = common dso_local global i32 0, align 4
@reg_offset = common dso_local global i32* null, align 8
@IA64_BSP_REGNUM = common dso_local global i32 0, align 4
@IA64_BSPSTORE_REGNUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.regcache*, i32, i8*)* @ia64_fbsd_regcache_supply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ia64_fbsd_regcache_supply(%struct.regcache* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.regcache*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store %struct.regcache* %0, %struct.regcache** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @NUM_REGS, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %3
  br label %63

16:                                               ; preds = %11
  %17 = load i32*, i32** @reg_offset, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @IA64_BSP_REGNUM, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %16
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  store i8 %30, i8* %8, align 1
  %31 = load i8*, i8** %6, align 8
  %32 = load i32*, i32** @reg_offset, align 8
  %33 = load i64, i64* @IA64_BSPSTORE_REGNUM, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %31, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = load i8, i8* %8, align 1
  %41 = sext i8 %40 to i32
  %42 = add nsw i32 %41, %39
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %8, align 1
  %44 = load %struct.regcache*, %struct.regcache** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @regcache_raw_supply(%struct.regcache* %44, i32 %45, i8* %8)
  br label %63

47:                                               ; preds = %16
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load %struct.regcache*, %struct.regcache** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @regcache_raw_supply(%struct.regcache* %51, i32 %52, i8* null)
  br label %62

54:                                               ; preds = %47
  %55 = load %struct.regcache*, %struct.regcache** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = call i32 @regcache_raw_supply(%struct.regcache* %55, i32 %56, i8* %60)
  br label %62

62:                                               ; preds = %54, %50
  br label %63

63:                                               ; preds = %15, %62, %25
  ret void
}

declare dso_local i32 @regcache_raw_supply(%struct.regcache*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
