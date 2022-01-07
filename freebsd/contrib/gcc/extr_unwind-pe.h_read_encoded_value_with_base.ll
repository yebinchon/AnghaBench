; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-pe.h_read_encoded_value_with_base.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-pe.h_read_encoded_value_with_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.unaligned = type { i8* }

@DW_EH_PE_aligned = common dso_local global i8 0, align 1
@DW_EH_PE_pcrel = common dso_local global i8 0, align 1
@DW_EH_PE_indirect = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8, i32, i8*, i32*)* @read_encoded_value_with_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @read_encoded_value_with_base(i8 zeroext %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %union.unaligned*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i8 %0, i8* %5, align 1
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %union.unaligned*
  store %union.unaligned* %15, %union.unaligned** %9, align 8
  %16 = load i8, i8* %5, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, i8* @DW_EH_PE_aligned, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %4
  %22 = load i8*, i8** %7, align 8
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = add i64 %25, 8
  %27 = sub i64 %26, 1
  %28 = and i64 %27, -8
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i32*
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = add i64 %35, 8
  %37 = trunc i64 %36 to i32
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  store i8* %39, i8** %7, align 8
  br label %135

40:                                               ; preds = %4
  %41 = load i8, i8* %5, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %42, 15
  switch i32 %43, label %101 [
    i32 136, label %44
    i32 128, label %51
    i32 132, label %56
    i32 131, label %61
    i32 130, label %68
    i32 129, label %74
    i32 135, label %81
    i32 134, label %88
    i32 133, label %94
  ]

44:                                               ; preds = %40
  %45 = load %union.unaligned*, %union.unaligned** %9, align 8
  %46 = bitcast %union.unaligned* %45 to i8**
  %47 = load i8*, i8** %46, align 1
  %48 = ptrtoint i8* %47 to i32
  store i32 %48, i32* %10, align 4
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 8
  store i8* %50, i8** %7, align 8
  br label %103

51:                                               ; preds = %40
  %52 = load i8*, i8** %7, align 8
  %53 = call i8* @read_uleb128(i8* %52, i64* %12)
  store i8* %53, i8** %7, align 8
  %54 = load i64, i64* %12, align 8
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %10, align 4
  br label %103

56:                                               ; preds = %40
  %57 = load i8*, i8** %7, align 8
  %58 = call i8* @read_sleb128(i8* %57, i64* %13)
  store i8* %58, i8** %7, align 8
  %59 = load i64, i64* %13, align 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %10, align 4
  br label %103

61:                                               ; preds = %40
  %62 = load %union.unaligned*, %union.unaligned** %9, align 8
  %63 = bitcast %union.unaligned* %62 to i16*
  %64 = load i16, i16* %63, align 1
  %65 = zext i16 %64 to i32
  store i32 %65, i32* %10, align 4
  %66 = load i8*, i8** %7, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 2
  store i8* %67, i8** %7, align 8
  br label %103

68:                                               ; preds = %40
  %69 = load %union.unaligned*, %union.unaligned** %9, align 8
  %70 = bitcast %union.unaligned* %69 to i32*
  %71 = load i32, i32* %70, align 1
  store i32 %71, i32* %10, align 4
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 4
  store i8* %73, i8** %7, align 8
  br label %103

74:                                               ; preds = %40
  %75 = load %union.unaligned*, %union.unaligned** %9, align 8
  %76 = bitcast %union.unaligned* %75 to i64*
  %77 = load i64, i64* %76, align 1
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %10, align 4
  %79 = load i8*, i8** %7, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 8
  store i8* %80, i8** %7, align 8
  br label %103

81:                                               ; preds = %40
  %82 = load %union.unaligned*, %union.unaligned** %9, align 8
  %83 = bitcast %union.unaligned* %82 to i16*
  %84 = load i16, i16* %83, align 1
  %85 = sext i16 %84 to i32
  store i32 %85, i32* %10, align 4
  %86 = load i8*, i8** %7, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 2
  store i8* %87, i8** %7, align 8
  br label %103

88:                                               ; preds = %40
  %89 = load %union.unaligned*, %union.unaligned** %9, align 8
  %90 = bitcast %union.unaligned* %89 to i32*
  %91 = load i32, i32* %90, align 1
  store i32 %91, i32* %10, align 4
  %92 = load i8*, i8** %7, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 4
  store i8* %93, i8** %7, align 8
  br label %103

94:                                               ; preds = %40
  %95 = load %union.unaligned*, %union.unaligned** %9, align 8
  %96 = bitcast %union.unaligned* %95 to i64*
  %97 = load i64, i64* %96, align 1
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %10, align 4
  %99 = load i8*, i8** %7, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 8
  store i8* %100, i8** %7, align 8
  br label %103

101:                                              ; preds = %40
  %102 = call i32 (...) @__gxx_abort()
  br label %103

103:                                              ; preds = %101, %94, %88, %81, %74, %68, %61, %56, %51, %44
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %134

106:                                              ; preds = %103
  %107 = load i8, i8* %5, align 1
  %108 = zext i8 %107 to i32
  %109 = and i32 %108, 112
  %110 = load i8, i8* @DW_EH_PE_pcrel, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp eq i32 %109, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %106
  %114 = load %union.unaligned*, %union.unaligned** %9, align 8
  %115 = ptrtoint %union.unaligned* %114 to i32
  br label %118

116:                                              ; preds = %106
  %117 = load i32, i32* %6, align 4
  br label %118

118:                                              ; preds = %116, %113
  %119 = phi i32 [ %115, %113 ], [ %117, %116 ]
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %10, align 4
  %122 = load i8, i8* %5, align 1
  %123 = zext i8 %122 to i32
  %124 = load i8, i8* @DW_EH_PE_indirect, align 1
  %125 = zext i8 %124 to i32
  %126 = and i32 %123, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %118
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = inttoptr i64 %130 to i32*
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %10, align 4
  br label %133

133:                                              ; preds = %128, %118
  br label %134

134:                                              ; preds = %133, %103
  br label %135

135:                                              ; preds = %134, %21
  %136 = load i32, i32* %10, align 4
  %137 = load i32*, i32** %8, align 8
  store i32 %136, i32* %137, align 4
  %138 = load i8*, i8** %7, align 8
  ret i8* %138
}

declare dso_local i8* @read_uleb128(i8*, i64*) #1

declare dso_local i8* @read_sleb128(i8*, i64*) #1

declare dso_local i32 @__gxx_abort(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
