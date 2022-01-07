; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoff.c_ecoff_emit_aggregate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoff.c_ecoff_emit_aggregate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i64 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.ecoff_debug_swap = type { i32, i32, i32 (i32*, i8*, %struct.TYPE_11__*)*, i32 (i32*, i8*, i32*)* }
%struct.TYPE_11__ = type { i32 }
%struct.ecoff_debug_info = type { i8*, %struct.TYPE_10__, i64, %struct.TYPE_13__*, i32* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_15__ = type { %struct.ecoff_debug_swap }
%struct.TYPE_14__ = type { %struct.ecoff_debug_info }

@.str = private unnamed_addr constant [12 x i8] c"<undefined>\00", align 1
@indexNil = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"<no name>\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"%s %s { ifd = %u, index = %lu }\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_13__*, i8*, %struct.TYPE_12__*, i64, i8*)* @ecoff_emit_aggregate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecoff_emit_aggregate(i32* %0, %struct.TYPE_13__* %1, i8* %2, %struct.TYPE_12__* %3, i64 %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.ecoff_debug_swap*, align 8
  %14 = alloca %struct.ecoff_debug_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_11__, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %10, align 8
  store i64 %4, i64* %11, align 8
  store i8* %5, i8** %12, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call %struct.TYPE_15__* @ecoff_backend(i32* %20)
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  store %struct.ecoff_debug_swap* %22, %struct.ecoff_debug_swap** %13, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call %struct.TYPE_14__* @ecoff_data(i32* %23)
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  store %struct.ecoff_debug_info* %25, %struct.ecoff_debug_info** %14, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %15, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %15, align 4
  %33 = icmp eq i32 %32, 4095
  br i1 %33, label %34, label %37

34:                                               ; preds = %6
  %35 = load i64, i64* %11, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %15, align 4
  br label %37

37:                                               ; preds = %34, %6
  %38 = load i32, i32* %15, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %48, label %40

40:                                               ; preds = %37
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 4095
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* %16, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45, %37
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  br label %130

49:                                               ; preds = %45, %40
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* @indexNil, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %17, align 8
  br label %129

54:                                               ; preds = %49
  %55 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %14, align 8
  %56 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %55, i32 0, i32 4
  %57 = load i32*, i32** %56, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %14, align 8
  %61 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %60, i32 0, i32 3
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %61, align 8
  %63 = load i32, i32* %15, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i64 %64
  store %struct.TYPE_13__* %65, %struct.TYPE_13__** %8, align 8
  br label %93

66:                                               ; preds = %54
  %67 = load %struct.ecoff_debug_swap*, %struct.ecoff_debug_swap** %13, align 8
  %68 = getelementptr inbounds %struct.ecoff_debug_swap, %struct.ecoff_debug_swap* %67, i32 0, i32 3
  %69 = load i32 (i32*, i8*, i32*)*, i32 (i32*, i8*, i32*)** %68, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %14, align 8
  %72 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %71, i32 0, i32 4
  %73 = load i32*, i32** %72, align 8
  %74 = bitcast i32* %73 to i8*
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %15, align 4
  %79 = add i32 %77, %78
  %80 = load %struct.ecoff_debug_swap*, %struct.ecoff_debug_swap** %13, align 8
  %81 = getelementptr inbounds %struct.ecoff_debug_swap, %struct.ecoff_debug_swap* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = mul i32 %79, %82
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %74, i64 %84
  %86 = call i32 %69(i32* %70, i8* %85, i32* %19)
  %87 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %14, align 8
  %88 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %87, i32 0, i32 3
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %88, align 8
  %90 = load i32, i32* %19, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i64 %91
  store %struct.TYPE_13__* %92, %struct.TYPE_13__** %8, align 8
  br label %93

93:                                               ; preds = %66, %59
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* %16, align 4
  %98 = zext i32 %97 to i64
  %99 = add nsw i64 %98, %96
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %16, align 4
  %101 = load %struct.ecoff_debug_swap*, %struct.ecoff_debug_swap** %13, align 8
  %102 = getelementptr inbounds %struct.ecoff_debug_swap, %struct.ecoff_debug_swap* %101, i32 0, i32 2
  %103 = load i32 (i32*, i8*, %struct.TYPE_11__*)*, i32 (i32*, i8*, %struct.TYPE_11__*)** %102, align 8
  %104 = load i32*, i32** %7, align 8
  %105 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %14, align 8
  %106 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = inttoptr i64 %107 to i8*
  %109 = load i32, i32* %16, align 4
  %110 = load %struct.ecoff_debug_swap*, %struct.ecoff_debug_swap** %13, align 8
  %111 = getelementptr inbounds %struct.ecoff_debug_swap, %struct.ecoff_debug_swap* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = mul i32 %109, %112
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %108, i64 %114
  %116 = call i32 %103(i32* %104, i8* %115, %struct.TYPE_11__* %18)
  %117 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %14, align 8
  %118 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %119, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %124, i64 %127
  store i8* %128, i8** %17, align 8
  br label %129

129:                                              ; preds = %93, %53
  br label %130

130:                                              ; preds = %129, %48
  %131 = load i8*, i8** %9, align 8
  %132 = load i8*, i8** %12, align 8
  %133 = load i8*, i8** %17, align 8
  %134 = load i32, i32* %15, align 4
  %135 = load i32, i32* %16, align 4
  %136 = zext i32 %135 to i64
  %137 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %14, align 8
  %138 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %136, %140
  %142 = call i32 @sprintf(i8* %131, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %132, i8* %133, i32 %134, i64 %141)
  ret void
}

declare dso_local %struct.TYPE_15__* @ecoff_backend(i32*) #1

declare dso_local %struct.TYPE_14__* @ecoff_data(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
