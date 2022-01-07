; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_func_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_func_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.function_info = type { %struct.TYPE_12__, %struct.TYPE_13__*, i64, %struct.function_info* }
%struct.TYPE_12__ = type { %struct.TYPE_15__*, %struct.TYPE_11__* }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_13__ = type { i8*, i32* }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s+%lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.function_info*)* @func_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @func_name(%struct.function_info* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.function_info*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.function_info* %0, %struct.function_info** %3, align 8
  br label %9

9:                                                ; preds = %14, %1
  %10 = load %struct.function_info*, %struct.function_info** %3, align 8
  %11 = getelementptr inbounds %struct.function_info, %struct.function_info* %10, i32 0, i32 3
  %12 = load %struct.function_info*, %struct.function_info** %11, align 8
  %13 = icmp ne %struct.function_info* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load %struct.function_info*, %struct.function_info** %3, align 8
  %16 = getelementptr inbounds %struct.function_info, %struct.function_info* %15, i32 0, i32 3
  %17 = load %struct.function_info*, %struct.function_info** %16, align 8
  store %struct.function_info* %17, %struct.function_info** %3, align 8
  br label %9

18:                                               ; preds = %9
  %19 = load %struct.function_info*, %struct.function_info** %3, align 8
  %20 = getelementptr inbounds %struct.function_info, %struct.function_info* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load %struct.function_info*, %struct.function_info** %3, align 8
  %25 = getelementptr inbounds %struct.function_info, %struct.function_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %2, align 8
  br label %83

32:                                               ; preds = %18
  %33 = load %struct.function_info*, %struct.function_info** %3, align 8
  %34 = getelementptr inbounds %struct.function_info, %struct.function_info* %33, i32 0, i32 1
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  store %struct.TYPE_13__* %35, %struct.TYPE_13__** %4, align 8
  %36 = load %struct.function_info*, %struct.function_info** %3, align 8
  %37 = getelementptr inbounds %struct.function_info, %struct.function_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %68

43:                                               ; preds = %32
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @strlen(i8* %46)
  store i64 %47, i64* %7, align 8
  %48 = load i64, i64* %7, align 8
  %49 = add i64 %48, 10
  %50 = call i8* @bfd_malloc(i64 %49)
  store i8* %50, i8** %8, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %83

54:                                               ; preds = %43
  %55 = load i8*, i8** %8, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.function_info*, %struct.function_info** %3, align 8
  %60 = getelementptr inbounds %struct.function_info, %struct.function_info* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = and i64 %64, 4294967295
  %66 = call i32 @sprintf(i8* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %58, i64 %65)
  %67 = load i8*, i8** %8, align 8
  store i8* %67, i8** %2, align 8
  br label %83

68:                                               ; preds = %32
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  store i32* %71, i32** %5, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = call %struct.TYPE_14__* @elf_tdata(i32* %72)
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  store i32* %74, i32** %6, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = load %struct.function_info*, %struct.function_info** %3, align 8
  %78 = getelementptr inbounds %struct.function_info, %struct.function_info* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %79, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %82 = call i8* @bfd_elf_sym_name(i32* %75, i32* %76, %struct.TYPE_15__* %80, %struct.TYPE_13__* %81)
  store i8* %82, i8** %2, align 8
  br label %83

83:                                               ; preds = %68, %54, %53, %23
  %84 = load i8*, i8** %2, align 8
  ret i8* %84
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @bfd_malloc(i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i64) #1

declare dso_local %struct.TYPE_14__* @elf_tdata(i32*) #1

declare dso_local i8* @bfd_elf_sym_name(i32*, i32*, %struct.TYPE_15__*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
