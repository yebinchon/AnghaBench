; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bout.c_callj_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bout.c_callj_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.TYPE_8__ = type { i32, i32** }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32* }

@CALLS = common dso_local global i32 0, align 4
@BAL = common dso_local global i32 0, align 4
@BAL_MASK = common dso_local global i32 0, align 4
@BSF_SECTION_SYM = common dso_local global i32 0, align 4
@CALL = common dso_local global i32 0, align 4
@bfd_reloc_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_link_info*, %struct.TYPE_8__*, i8*, i32, i32, i32*, i64)* @callj_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @callj_callback(i32* %0, %struct.bfd_link_info* %1, %struct.TYPE_8__* %2, i8* %3, i32 %4, i32 %5, i32* %6, i64 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.bfd_link_info*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_9__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %9, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %10, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i64 %7, i64* %16, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = bitcast i8* %23 to i32*
  %25 = load i32, i32* %13, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = call i32 @bfd_get_32(i32* %22, i32* %27)
  store i32 %28, i32* %17, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32**, i32*** %30, align 8
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %18, align 8
  %33 = load i32*, i32** %18, align 8
  %34 = call %struct.TYPE_9__* @aout_symbol(i32* %33)
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %19, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %36 = load %struct.bfd_link_info*, %struct.bfd_link_info** %10, align 8
  %37 = load i32*, i32** %15, align 8
  %38 = call i32 @get_value(%struct.TYPE_8__* %35, %struct.bfd_link_info* %36, i32* %37)
  store i32 %38, i32* %20, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @IS_OTHER(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %8
  %45 = load i32, i32* @CALLS, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %48, 1
  %50 = or i32 %45, %49
  store i32 %50, i32* %17, align 4
  br label %139

51:                                               ; preds = %8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @IS_CALLNAME(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %90

57:                                               ; preds = %51
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i64 1
  store %struct.TYPE_9__* %59, %struct.TYPE_9__** %21, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @IS_BALNAME(i32 %62)
  %64 = call i32 @BFD_ASSERT(i32 %63)
  %65 = load i32, i32* @BAL, align 4
  %66 = load i32, i32* %17, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @output_addr(i32* %70)
  %72 = add nsw i32 %66, %71
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %72, %76
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %77, %80
  %82 = load i32, i32* %14, align 4
  %83 = sub i32 %81, %82
  %84 = load i32*, i32** %15, align 8
  %85 = call i32 @output_addr(i32* %84)
  %86 = sub i32 %83, %85
  %87 = load i32, i32* @BAL_MASK, align 4
  %88 = and i32 %86, %87
  %89 = or i32 %65, %88
  store i32 %89, i32* %17, align 4
  br label %138

90:                                               ; preds = %51
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @BSF_SECTION_SYM, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %90
  %99 = load i64, i64* %16, align 8
  %100 = icmp ne i64 %99, 0
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = call i32 @BFD_ASSERT(i32 %102)
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = load i32*, i32** %15, align 8
  %109 = icmp eq i32* %107, %108
  %110 = zext i1 %109 to i32
  %111 = call i32 @BFD_ASSERT(i32 %110)
  br label %137

112:                                              ; preds = %90
  %113 = load i32, i32* @CALL, align 4
  %114 = load i32, i32* %17, align 4
  %115 = load i32, i32* @BAL_MASK, align 4
  %116 = and i32 %114, %115
  %117 = load i32, i32* %20, align 4
  %118 = add nsw i32 %116, %117
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %118, %121
  %123 = load i64, i64* %16, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %112
  %126 = load i32, i32* %14, align 4
  br label %128

127:                                              ; preds = %112
  br label %128

128:                                              ; preds = %127, %125
  %129 = phi i32 [ %126, %125 ], [ 0, %127 ]
  %130 = sub i32 %122, %129
  %131 = load i32*, i32** %15, align 8
  %132 = call i32 @output_addr(i32* %131)
  %133 = sub i32 %130, %132
  %134 = load i32, i32* @BAL_MASK, align 4
  %135 = and i32 %133, %134
  %136 = or i32 %113, %135
  store i32 %136, i32* %17, align 4
  br label %137

137:                                              ; preds = %128, %98
  br label %138

138:                                              ; preds = %137, %57
  br label %139

139:                                              ; preds = %138, %44
  %140 = load i32*, i32** %9, align 8
  %141 = load i32, i32* %17, align 4
  %142 = load i8*, i8** %12, align 8
  %143 = bitcast i8* %142 to i32*
  %144 = load i32, i32* %14, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = call i32 @bfd_put_32(i32* %140, i32 %141, i32* %146)
  %148 = load i32, i32* @bfd_reloc_ok, align 4
  ret i32 %148
}

declare dso_local i32 @bfd_get_32(i32*, i32*) #1

declare dso_local %struct.TYPE_9__* @aout_symbol(i32*) #1

declare dso_local i32 @get_value(%struct.TYPE_8__*, %struct.bfd_link_info*, i32*) #1

declare dso_local i64 @IS_OTHER(i32) #1

declare dso_local i64 @IS_CALLNAME(i32) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @IS_BALNAME(i32) #1

declare dso_local i32 @output_addr(i32*) #1

declare dso_local i32 @bfd_put_32(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
