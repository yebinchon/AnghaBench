; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_peXXigen.c_pe_print_pdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_peXXigen.c_pe_print_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c".pdata\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"Warning, .pdata section size (%ld) is not a multiple of %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"\0AThe Function Table (interpreted .pdata section contents)\0A\00", align 1
@.str.3 = private unnamed_addr constant [124 x i8] c" vma:\09\09Begin    End      EH       EH       PrologEnd  Exception\0A     \09\09Address  Address  Handler  Data     Address    Mask\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"   %x\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@PDATA_ROW_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @pe_print_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pe_print_pdata(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call %struct.TYPE_7__* @bfd_get_section_by_name(i32* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 20, i32* %13, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %25 = icmp eq %struct.TYPE_7__* %24, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %2
  %27 = load i32*, i32** %4, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %29 = call i32* @coff_section_data(i32* %27, %struct.TYPE_7__* %28)
  %30 = icmp eq i32* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load i32*, i32** %4, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %34 = call %struct.TYPE_8__* @pei_section_data(i32* %32, %struct.TYPE_7__* %33)
  %35 = icmp eq %struct.TYPE_8__* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %31, %26, %2
  %37 = load i32, i32* @TRUE, align 4
  store i32 %37, i32* %3, align 4
  br label %204

38:                                               ; preds = %31
  %39 = load i32*, i32** %4, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %41 = call %struct.TYPE_8__* @pei_section_data(i32* %39, %struct.TYPE_7__* %40)
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %13, align 4
  %46 = srem i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %38
  %49 = load i32*, i32** %6, align 8
  %50 = call i8* @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = load i32, i32* %13, align 4
  %54 = call i32 (i32*, i8*, ...) @fprintf(i32* %49, i8* %50, i64 %52, i32 %53)
  br label %55

55:                                               ; preds = %48, %38
  %56 = load i32*, i32** %6, align 8
  %57 = call i8* @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  %58 = call i32 (i32*, i8*, ...) @fprintf(i32* %56, i8* %57)
  %59 = load i32*, i32** %6, align 8
  %60 = call i8* @_(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.3, i64 0, i64 0))
  %61 = call i32 (i32*, i8*, ...) @fprintf(i32* %59, i8* %60)
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %55
  %68 = load i32, i32* @TRUE, align 4
  store i32 %68, i32* %3, align 4
  br label %204

69:                                               ; preds = %55
  %70 = load i32*, i32** %4, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %72 = call i32 @bfd_malloc_and_get_section(i32* %70, %struct.TYPE_7__* %71, i32** %7)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %69
  %75 = load i32*, i32** %7, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @free(i32* %78)
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i32, i32* @FALSE, align 4
  store i32 %81, i32* %3, align 4
  br label %204

82:                                               ; preds = %69
  store i32 0, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %196, %82
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %200

88:                                               ; preds = %84
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 20
  %91 = load i32, i32* %12, align 4
  %92 = icmp sgt i32 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %200

94:                                               ; preds = %88
  %95 = load i32*, i32** %4, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = call i64 @GET_PDATA_ENTRY(i32* %95, i32* %99)
  store i64 %100, i64* %14, align 8
  %101 = load i32*, i32** %4, align 8
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = getelementptr inbounds i32, i32* %105, i64 4
  %107 = call i64 @GET_PDATA_ENTRY(i32* %101, i32* %106)
  store i64 %107, i64* %15, align 8
  %108 = load i32*, i32** %4, align 8
  %109 = load i32*, i32** %7, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = getelementptr inbounds i32, i32* %112, i64 8
  %114 = call i64 @GET_PDATA_ENTRY(i32* %108, i32* %113)
  store i64 %114, i64* %16, align 8
  %115 = load i32*, i32** %4, align 8
  %116 = load i32*, i32** %7, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = getelementptr inbounds i32, i32* %119, i64 12
  %121 = call i64 @GET_PDATA_ENTRY(i32* %115, i32* %120)
  store i64 %121, i64* %17, align 8
  %122 = load i32*, i32** %4, align 8
  %123 = load i32*, i32** %7, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = getelementptr inbounds i32, i32* %126, i64 16
  %128 = call i64 @GET_PDATA_ENTRY(i32* %122, i32* %127)
  store i64 %128, i64* %18, align 8
  %129 = load i64, i64* %14, align 8
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %144

131:                                              ; preds = %94
  %132 = load i64, i64* %15, align 8
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %131
  %135 = load i64, i64* %16, align 8
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %134
  %138 = load i64, i64* %17, align 8
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = load i64, i64* %18, align 8
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  br label %200

144:                                              ; preds = %140, %137, %134, %131, %94
  %145 = load i64, i64* %16, align 8
  %146 = and i64 %145, 1
  %147 = shl i64 %146, 2
  %148 = load i64, i64* %18, align 8
  %149 = and i64 %148, 3
  %150 = or i64 %147, %149
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %19, align 4
  %152 = load i64, i64* %16, align 8
  %153 = and i64 %152, -4
  store i64 %153, i64* %16, align 8
  %154 = load i64, i64* %18, align 8
  %155 = and i64 %154, -4
  store i64 %155, i64* %18, align 8
  %156 = load i32*, i32** %6, align 8
  %157 = call i32 @fputc(i8 signext 32, i32* %156)
  %158 = load i32*, i32** %6, align 8
  %159 = load i32, i32* %10, align 4
  %160 = sext i32 %159 to i64
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = add nsw i64 %160, %163
  %165 = call i32 @fprintf_vma(i32* %158, i64 %164)
  %166 = load i32*, i32** %6, align 8
  %167 = call i32 @fputc(i8 signext 9, i32* %166)
  %168 = load i32*, i32** %6, align 8
  %169 = load i64, i64* %14, align 8
  %170 = call i32 @fprintf_vma(i32* %168, i64 %169)
  %171 = load i32*, i32** %6, align 8
  %172 = call i32 @fputc(i8 signext 32, i32* %171)
  %173 = load i32*, i32** %6, align 8
  %174 = load i64, i64* %15, align 8
  %175 = call i32 @fprintf_vma(i32* %173, i64 %174)
  %176 = load i32*, i32** %6, align 8
  %177 = call i32 @fputc(i8 signext 32, i32* %176)
  %178 = load i32*, i32** %6, align 8
  %179 = load i64, i64* %16, align 8
  %180 = call i32 @fprintf_vma(i32* %178, i64 %179)
  %181 = load i32*, i32** %6, align 8
  %182 = call i32 @fputc(i8 signext 32, i32* %181)
  %183 = load i32*, i32** %6, align 8
  %184 = load i64, i64* %17, align 8
  %185 = call i32 @fprintf_vma(i32* %183, i64 %184)
  %186 = load i32*, i32** %6, align 8
  %187 = call i32 @fputc(i8 signext 32, i32* %186)
  %188 = load i32*, i32** %6, align 8
  %189 = load i64, i64* %18, align 8
  %190 = call i32 @fprintf_vma(i32* %188, i64 %189)
  %191 = load i32*, i32** %6, align 8
  %192 = load i32, i32* %19, align 4
  %193 = call i32 (i32*, i8*, ...) @fprintf(i32* %191, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %192)
  %194 = load i32*, i32** %6, align 8
  %195 = call i32 (i32*, i8*, ...) @fprintf(i32* %194, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %196

196:                                              ; preds = %144
  %197 = load i32, i32* %13, align 4
  %198 = load i32, i32* %10, align 4
  %199 = add nsw i32 %198, %197
  store i32 %199, i32* %10, align 4
  br label %84

200:                                              ; preds = %143, %93, %84
  %201 = load i32*, i32** %7, align 8
  %202 = call i32 @free(i32* %201)
  %203 = load i32, i32* @TRUE, align 4
  store i32 %203, i32* %3, align 4
  br label %204

204:                                              ; preds = %200, %80, %67, %36
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local %struct.TYPE_7__* @bfd_get_section_by_name(i32*, i8*) #1

declare dso_local i32* @coff_section_data(i32*, %struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_8__* @pei_section_data(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @bfd_malloc_and_get_section(i32*, %struct.TYPE_7__*, i32**) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @GET_PDATA_ENTRY(i32*, i32*) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

declare dso_local i32 @fprintf_vma(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
