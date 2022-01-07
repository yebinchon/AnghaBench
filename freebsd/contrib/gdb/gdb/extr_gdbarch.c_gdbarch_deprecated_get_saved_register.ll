; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbarch.c_gdbarch_deprecated_get_saved_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbarch.c_gdbarch_deprecated_get_saved_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 (i8*, i32*, i32*, %struct.frame_info*, i32, i32*)* }
%struct.frame_info = type opaque
%struct.frame_info.0 = type { i32 }

@gdbarch_debug = common dso_local global i32 0, align 4
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"gdbarch_deprecated_get_saved_register called\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdbarch_deprecated_get_saved_register(%struct.gdbarch* %0, i8* %1, i32* %2, i32* %3, %struct.frame_info.0* %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.gdbarch*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.frame_info.0*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.gdbarch* %0, %struct.gdbarch** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.frame_info.0* %4, %struct.frame_info.0** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %15 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %16 = icmp ne %struct.gdbarch* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @gdb_assert(i32 %17)
  %19 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %20 = getelementptr inbounds %struct.gdbarch, %struct.gdbarch* %19, i32 0, i32 0
  %21 = load i32 (i8*, i32*, i32*, %struct.frame_info*, i32, i32*)*, i32 (i8*, i32*, i32*, %struct.frame_info*, i32, i32*)** %20, align 8
  %22 = icmp ne i32 (i8*, i32*, i32*, %struct.frame_info*, i32, i32*)* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @gdb_assert(i32 %23)
  %25 = load i32, i32* @gdbarch_debug, align 4
  %26 = icmp sge i32 %25, 2
  br i1 %26, label %27, label %30

27:                                               ; preds = %7
  %28 = load i32, i32* @gdb_stdlog, align 4
  %29 = call i32 @fprintf_unfiltered(i32 %28, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %7
  %31 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %32 = getelementptr inbounds %struct.gdbarch, %struct.gdbarch* %31, i32 0, i32 0
  %33 = load i32 (i8*, i32*, i32*, %struct.frame_info*, i32, i32*)*, i32 (i8*, i32*, i32*, %struct.frame_info*, i32, i32*)** %32, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = load %struct.frame_info.0*, %struct.frame_info.0** %12, align 8
  %38 = bitcast %struct.frame_info.0* %37 to %struct.frame_info*
  %39 = load i32, i32* %13, align 4
  %40 = load i32*, i32** %14, align 8
  %41 = call i32 %33(i8* %34, i32* %35, i32* %36, %struct.frame_info* %38, i32 %39, i32* %40)
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
