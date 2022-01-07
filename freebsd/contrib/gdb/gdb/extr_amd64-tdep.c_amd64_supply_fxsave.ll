; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_amd64-tdep.c_amd64_supply_fxsave.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_amd64-tdep.c_amd64_supply_fxsave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regcache = type { i32 }

@I387_FISEG_REGNUM = common dso_local global i32 0, align 4
@I387_FOSEG_REGNUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amd64_supply_fxsave(%struct.regcache* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.regcache*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.regcache* %0, %struct.regcache** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.regcache*, %struct.regcache** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @i387_supply_fxsave(%struct.regcache* %8, i32 %9, i8* %10)
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %42

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @I387_FISEG_REGNUM, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %18, %14
  %23 = load %struct.regcache*, %struct.regcache** %4, align 8
  %24 = load i32, i32* @I387_FISEG_REGNUM, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 12
  %27 = call i32 @regcache_raw_supply(%struct.regcache* %23, i32 %24, i8* %26)
  br label %28

28:                                               ; preds = %22, %18
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @I387_FOSEG_REGNUM, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31, %28
  %36 = load %struct.regcache*, %struct.regcache** %4, align 8
  %37 = load i32, i32* @I387_FOSEG_REGNUM, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 20
  %40 = call i32 @regcache_raw_supply(%struct.regcache* %36, i32 %37, i8* %39)
  br label %41

41:                                               ; preds = %35, %31
  br label %42

42:                                               ; preds = %41, %3
  ret void
}

declare dso_local i32 @i387_supply_fxsave(%struct.regcache*, i32, i8*) #1

declare dso_local i32 @regcache_raw_supply(%struct.regcache*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
