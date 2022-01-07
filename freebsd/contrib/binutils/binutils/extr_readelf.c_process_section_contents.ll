; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_process_section_contents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_process_section_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@do_dump = common dso_local global i32 0, align 4
@section_headers = common dso_local global i32* null, align 8
@elf_header = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@num_dump_sects = common dso_local global i32 0, align 4
@dump_sects = common dso_local global i32* null, align 8
@HEX_DUMP = common dso_local global i32 0, align 4
@DEBUG_DUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Section %d was not dumped because it does not exist!\0A\00", align 1
@DISASS_DUMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @process_section_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_section_contents(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32, i32* @do_dump, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %71

8:                                                ; preds = %1
  %9 = call i32 (...) @initialise_dumps_byname()
  store i32 0, i32* %4, align 4
  %10 = load i32*, i32** @section_headers, align 8
  store i32* %10, i32** %3, align 8
  br label %11

11:                                               ; preds = %48, %8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @elf_header, i32 0, i32 0), align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @num_dump_sects, align 4
  %18 = icmp ult i32 %16, %17
  br label %19

19:                                               ; preds = %15, %11
  %20 = phi i1 [ false, %11 ], [ %18, %15 ]
  br i1 %20, label %21, label %53

21:                                               ; preds = %19
  %22 = load i32*, i32** @dump_sects, align 8
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @HEX_DUMP, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load i32*, i32** %3, align 8
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @dump_section(i32* %31, i32* %32)
  br label %34

34:                                               ; preds = %30, %21
  %35 = load i32*, i32** @dump_sects, align 8
  %36 = load i32, i32* %4, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @DEBUG_DUMP, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load i32*, i32** %3, align 8
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @display_debug_section(i32* %44, i32* %45)
  br label %47

47:                                               ; preds = %43, %34
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %4, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %4, align 4
  %51 = load i32*, i32** %3, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %3, align 8
  br label %11

53:                                               ; preds = %19
  br label %54

54:                                               ; preds = %70, %53
  %55 = load i32, i32* %4, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* @num_dump_sects, align 4
  %58 = icmp ult i32 %55, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %54
  %60 = load i32*, i32** @dump_sects, align 8
  %61 = load i32, i32* %4, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @warn(i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %59
  br label %54

71:                                               ; preds = %7, %54
  ret void
}

declare dso_local i32 @initialise_dumps_byname(...) #1

declare dso_local i32 @dump_section(i32*, i32*) #1

declare dso_local i32 @display_debug_section(i32*, i32*) #1

declare dso_local i32 @warn(i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
