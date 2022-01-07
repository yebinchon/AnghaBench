; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_stabs.c_get_stab_string_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_stabs.c_get_stab_string_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8* }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@SEPARATE_STAB_SECTIONS = common dso_local global i32 0, align 4
@now_seg = common dso_local global %struct.TYPE_10__* null, align 8
@now_subseg = common dso_local global i32 0, align 4
@stdoutput = common dso_local global i32 0, align 4
@SEC_READONLY = common dso_local global i32 0, align 4
@SEC_DEBUGGING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_stab_string_offset(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i32, i32* @SEPARATE_STAB_SECTIONS, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = call i32 (...) @abort() #3
  unreachable

15:                                               ; preds = %2
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @strlen(i8* %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** @now_seg, align 8
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %7, align 8
  %19 = load i32, i32* @now_subseg, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = call %struct.TYPE_10__* @subseg_new(i8* %20, i32 0)
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %9, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %23 = call %struct.TYPE_11__* @seg_info(%struct.TYPE_10__* %22)
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ule i32 %27, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %15
  %30 = call i8* @frag_more(i32 1)
  store i8* %30, i8** %10, align 8
  %31 = load i8*, i8** %10, align 8
  store i8 0, i8* %31, align 1
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %33 = call %struct.TYPE_11__* @seg_info(%struct.TYPE_10__* %32)
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  store i32 1, i32* %6, align 4
  %36 = load i32, i32* @stdoutput, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %38 = load i32, i32* @SEC_READONLY, align 4
  %39 = load i32, i32* @SEC_DEBUGGING, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @bfd_set_section_flags(i32 %36, %struct.TYPE_10__* %37, i32 %40)
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = icmp eq i8* %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %29
  %48 = load i8*, i8** %4, align 8
  %49 = call i8* @xstrdup(i8* %48)
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %47, %29
  br label %53

53:                                               ; preds = %52, %15
  %54 = load i32, i32* %5, align 4
  %55 = icmp ugt i32 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %53
  %57 = load i32, i32* %5, align 4
  %58 = add i32 %57, 1
  %59 = call i8* @frag_more(i32 %58)
  store i8* %59, i8** %10, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = load i8*, i8** %3, align 8
  %62 = call i32 @strcpy(i8* %60, i8* %61)
  %63 = load i32, i32* %5, align 4
  %64 = add i32 %63, 1
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %66 = call %struct.TYPE_11__* @seg_info(%struct.TYPE_10__* %65)
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add i32 %69, %64
  store i32 %70, i32* %68, align 4
  br label %72

71:                                               ; preds = %53
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %71, %56
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @subseg_set(%struct.TYPE_10__* %73, i32 %74)
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local %struct.TYPE_10__* @subseg_new(i8*, i32) #2

declare dso_local %struct.TYPE_11__* @seg_info(%struct.TYPE_10__*) #2

declare dso_local i8* @frag_more(i32) #2

declare dso_local i32 @bfd_set_section_flags(i32, %struct.TYPE_10__*, i32) #2

declare dso_local i8* @xstrdup(i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @subseg_set(%struct.TYPE_10__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
