; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-tdep.c_i386_supply_gregset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-tdep.c_i386_supply_gregset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regset = type { %struct.gdbarch_tdep* }
%struct.gdbarch_tdep = type { i64, i32, i32* }
%struct.regcache = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i386_supply_gregset(%struct.regset* %0, %struct.regcache* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.regset*, align 8
  %7 = alloca %struct.regcache*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.gdbarch_tdep*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.regset* %0, %struct.regset** %6, align 8
  store %struct.regcache* %1, %struct.regcache** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load %struct.regset*, %struct.regset** %6, align 8
  %15 = getelementptr inbounds %struct.regset, %struct.regset* %14, i32 0, i32 0
  %16 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %15, align 8
  store %struct.gdbarch_tdep* %16, %struct.gdbarch_tdep** %11, align 8
  %17 = load i8*, i8** %9, align 8
  store i8* %17, i8** %12, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %11, align 8
  %20 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @gdb_assert(i32 %23)
  store i32 0, i32* %13, align 4
  br label %25

25:                                               ; preds = %62, %5
  %26 = load i32, i32* %13, align 4
  %27 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %11, align 8
  %28 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %65

31:                                               ; preds = %25
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %61

38:                                               ; preds = %35, %31
  %39 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %11, align 8
  %40 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, -1
  br i1 %46, label %47, label %61

47:                                               ; preds = %38
  %48 = load %struct.regcache*, %struct.regcache** %7, align 8
  %49 = load i32, i32* %13, align 4
  %50 = load i8*, i8** %12, align 8
  %51 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %11, align 8
  %52 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %50, i64 %58
  %60 = call i32 @regcache_raw_supply(%struct.regcache* %48, i32 %49, i8* %59)
  br label %61

61:                                               ; preds = %47, %38, %35
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %13, align 4
  br label %25

65:                                               ; preds = %25
  ret void
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @regcache_raw_supply(%struct.regcache*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
