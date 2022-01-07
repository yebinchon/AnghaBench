; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bout.c_calljx_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bout.c_calljx_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.TYPE_8__ = type { i64, i32** }
%struct.TYPE_9__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i64 }

@BALX_MASK = common dso_local global i32 0, align 4
@BALX = common dso_local global i32 0, align 4
@bfd_reloc_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_link_info*, %struct.TYPE_8__*, i8*, i8*, i32*)* @calljx_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calljx_callback(i32* %0, %struct.bfd_link_info* %1, %struct.TYPE_8__* %2, i8* %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.bfd_link_info*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_9__*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %8, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32* %5, i32** %12, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = call i32 @bfd_get_32(i32* %19, i8* %20)
  store i32 %21, i32* %13, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i32**, i32*** %23, align 8
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %14, align 8
  %26 = load i32*, i32** %14, align 8
  %27 = call %struct.TYPE_9__* @aout_symbol(i32* %26)
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %15, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %29 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = call i64 @get_value(%struct.TYPE_8__* %28, %struct.bfd_link_info* %29, i32* %30)
  store i64 %31, i64* %16, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @IS_CALLNAME(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %72

37:                                               ; preds = %6
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i64 1
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %17, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = getelementptr i8, i8* %41, i64 -4
  %43 = call i32 @bfd_get_32(i32* %40, i8* %42)
  store i32 %43, i32* %18, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @IS_BALNAME(i32 %46)
  %48 = call i32 @BFD_ASSERT(i32 %47)
  %49 = load i32, i32* @BALX_MASK, align 4
  %50 = load i32, i32* %18, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %18, align 4
  %52 = load i32, i32* @BALX, align 4
  %53 = load i32, i32* %18, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %18, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %18, align 4
  %57 = sext i32 %56 to i64
  %58 = load i8*, i8** %11, align 8
  %59 = getelementptr i8, i8* %58, i64 -4
  %60 = call i32 @bfd_put_32(i32* %55, i64 %57, i8* %59)
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  store %struct.TYPE_9__* %61, %struct.TYPE_9__** %15, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @output_addr(i32 %69)
  %71 = add nsw i64 %65, %70
  store i64 %71, i64* %16, align 8
  br label %72

72:                                               ; preds = %37, %6
  %73 = load i64, i64* %16, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %73, %76
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %13, align 4
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = load i8*, i8** %11, align 8
  %86 = call i32 @bfd_put_32(i32* %82, i64 %84, i8* %85)
  %87 = load i32, i32* @bfd_reloc_ok, align 4
  ret i32 %87
}

declare dso_local i32 @bfd_get_32(i32*, i8*) #1

declare dso_local %struct.TYPE_9__* @aout_symbol(i32*) #1

declare dso_local i64 @get_value(%struct.TYPE_8__*, %struct.bfd_link_info*, i32*) #1

declare dso_local i64 @IS_CALLNAME(i32) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @IS_BALNAME(i32) #1

declare dso_local i32 @bfd_put_32(i32*, i64, i8*) #1

declare dso_local i64 @output_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
