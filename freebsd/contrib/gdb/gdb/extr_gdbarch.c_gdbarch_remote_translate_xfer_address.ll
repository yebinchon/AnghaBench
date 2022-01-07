; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbarch.c_gdbarch_remote_translate_xfer_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbarch.c_gdbarch_remote_translate_xfer_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 (%struct.gdbarch*, %struct.regcache*, i32, i32, i32*, i32*)* }
%struct.regcache = type { i32 }

@gdbarch_debug = common dso_local global i32 0, align 4
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"gdbarch_remote_translate_xfer_address called\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdbarch_remote_translate_xfer_address(%struct.gdbarch* %0, %struct.regcache* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.gdbarch*, align 8
  %8 = alloca %struct.regcache*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.gdbarch* %0, %struct.gdbarch** %7, align 8
  store %struct.regcache* %1, %struct.regcache** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %13 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %14 = icmp ne %struct.gdbarch* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @gdb_assert(i32 %15)
  %17 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %18 = getelementptr inbounds %struct.gdbarch, %struct.gdbarch* %17, i32 0, i32 0
  %19 = load i32 (%struct.gdbarch*, %struct.regcache*, i32, i32, i32*, i32*)*, i32 (%struct.gdbarch*, %struct.regcache*, i32, i32, i32*, i32*)** %18, align 8
  %20 = icmp ne i32 (%struct.gdbarch*, %struct.regcache*, i32, i32, i32*, i32*)* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @gdb_assert(i32 %21)
  %23 = load i32, i32* @gdbarch_debug, align 4
  %24 = icmp sge i32 %23, 2
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = load i32, i32* @gdb_stdlog, align 4
  %27 = call i32 @fprintf_unfiltered(i32 %26, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %6
  %29 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %30 = getelementptr inbounds %struct.gdbarch, %struct.gdbarch* %29, i32 0, i32 0
  %31 = load i32 (%struct.gdbarch*, %struct.regcache*, i32, i32, i32*, i32*)*, i32 (%struct.gdbarch*, %struct.regcache*, i32, i32, i32*, i32*)** %30, align 8
  %32 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %33 = load %struct.regcache*, %struct.regcache** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32*, i32** %11, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = call i32 %31(%struct.gdbarch* %32, %struct.regcache* %33, i32 %34, i32 %35, i32* %36, i32* %37)
  ret void
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
