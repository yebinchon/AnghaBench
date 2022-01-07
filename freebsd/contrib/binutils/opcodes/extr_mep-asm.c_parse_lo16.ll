; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_mep-asm.c_parse_lo16.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_mep-asm.c_parse_lo16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%lo(\00", align 1
@BFD_RELOC_MEP_LOW16 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"missing `)'\00", align 1
@CGEN_PARSE_OPERAND_RESULT_NUMBER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%hi(\00", align 1
@BFD_RELOC_MEP_HI16S = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"%uhi(\00", align 1
@BFD_RELOC_MEP_HI16U = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"%sdaoff(\00", align 1
@BFD_RELOC_MEP_GPREL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"%tpoff(\00", align 1
@BFD_RELOC_MEP_TPREL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"invalid %function() here\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8**, i32, i64*, i64)* @parse_lo16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_lo16(i32 %0, i8** %1, i32 %2, i64* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i8**, i8*** %8, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = call i64 @strncasecmp(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %62

19:                                               ; preds = %5
  %20 = load i8**, i8*** %8, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 4
  store i8* %22, i8** %20, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i8**, i8*** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @BFD_RELOC_MEP_LOW16, align 4
  %27 = call i8* @cgen_parse_address(i32 %23, i8** %24, i32 %25, i32 %26, i32* %13, i32* %14)
  store i8* %27, i8** %12, align 8
  %28 = load i8**, i8*** %8, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 41
  br i1 %32, label %33, label %35

33:                                               ; preds = %19
  %34 = call i8* @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i8* %34, i8** %6, align 8
  br label %213

35:                                               ; preds = %19
  %36 = load i8**, i8*** %8, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %36, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* @CGEN_PARSE_OPERAND_RESULT_NUMBER, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* %14, align 4
  %47 = and i32 %46, 65535
  store i32 %47, i32* %14, align 4
  br label %48

48:                                               ; preds = %45, %41, %35
  %49 = load i64, i64* %11, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load i32, i32* %14, align 4
  %53 = trunc i32 %52 to i16
  %54 = sext i16 %53 to i64
  %55 = load i64*, i64** %10, align 8
  store i64 %54, i64* %55, align 8
  br label %60

56:                                               ; preds = %48
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64*, i64** %10, align 8
  store i64 %58, i64* %59, align 8
  br label %60

60:                                               ; preds = %56, %51
  %61 = load i8*, i8** %12, align 8
  store i8* %61, i8** %6, align 8
  br label %213

62:                                               ; preds = %5
  %63 = load i8**, i8*** %8, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = call i64 @strncasecmp(i8* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %102

67:                                               ; preds = %62
  %68 = load i8**, i8*** %8, align 8
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 4
  store i8* %70, i8** %68, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i8**, i8*** %8, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @BFD_RELOC_MEP_HI16S, align 4
  %75 = call i8* @cgen_parse_address(i32 %71, i8** %72, i32 %73, i32 %74, i32* %13, i32* %14)
  store i8* %75, i8** %12, align 8
  %76 = load i8**, i8*** %8, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 41
  br i1 %80, label %81, label %83

81:                                               ; preds = %67
  %82 = call i8* @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i8* %82, i8** %6, align 8
  br label %213

83:                                               ; preds = %67
  %84 = load i8**, i8*** %8, align 8
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %84, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = icmp eq i8* %87, null
  br i1 %88, label %89, label %97

89:                                               ; preds = %83
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* @CGEN_PARSE_OPERAND_RESULT_NUMBER, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %94, 32768
  %96 = ashr i32 %95, 16
  store i32 %96, i32* %14, align 4
  br label %97

97:                                               ; preds = %93, %89, %83
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = load i64*, i64** %10, align 8
  store i64 %99, i64* %100, align 8
  %101 = load i8*, i8** %12, align 8
  store i8* %101, i8** %6, align 8
  br label %213

102:                                              ; preds = %62
  %103 = load i8**, i8*** %8, align 8
  %104 = load i8*, i8** %103, align 8
  %105 = call i64 @strncasecmp(i8* %104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 5)
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %141

107:                                              ; preds = %102
  %108 = load i8**, i8*** %8, align 8
  %109 = load i8*, i8** %108, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 5
  store i8* %110, i8** %108, align 8
  %111 = load i32, i32* %7, align 4
  %112 = load i8**, i8*** %8, align 8
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @BFD_RELOC_MEP_HI16U, align 4
  %115 = call i8* @cgen_parse_address(i32 %111, i8** %112, i32 %113, i32 %114, i32* %13, i32* %14)
  store i8* %115, i8** %12, align 8
  %116 = load i8**, i8*** %8, align 8
  %117 = load i8*, i8** %116, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp ne i32 %119, 41
  br i1 %120, label %121, label %123

121:                                              ; preds = %107
  %122 = call i8* @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i8* %122, i8** %6, align 8
  br label %213

123:                                              ; preds = %107
  %124 = load i8**, i8*** %8, align 8
  %125 = load i8*, i8** %124, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %124, align 8
  %127 = load i8*, i8** %12, align 8
  %128 = icmp eq i8* %127, null
  br i1 %128, label %129, label %136

129:                                              ; preds = %123
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* @CGEN_PARSE_OPERAND_RESULT_NUMBER, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %129
  %134 = load i32, i32* %14, align 4
  %135 = ashr i32 %134, 16
  store i32 %135, i32* %14, align 4
  br label %136

136:                                              ; preds = %133, %129, %123
  %137 = load i32, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = load i64*, i64** %10, align 8
  store i64 %138, i64* %139, align 8
  %140 = load i8*, i8** %12, align 8
  store i8* %140, i8** %6, align 8
  br label %213

141:                                              ; preds = %102
  %142 = load i8**, i8*** %8, align 8
  %143 = load i8*, i8** %142, align 8
  %144 = call i64 @strncasecmp(i8* %143, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 8)
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %170

146:                                              ; preds = %141
  %147 = load i8**, i8*** %8, align 8
  %148 = load i8*, i8** %147, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 8
  store i8* %149, i8** %147, align 8
  %150 = load i32, i32* %7, align 4
  %151 = load i8**, i8*** %8, align 8
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* @BFD_RELOC_MEP_GPREL, align 4
  %154 = call i8* @cgen_parse_address(i32 %150, i8** %151, i32 %152, i32 %153, i32* null, i32* %14)
  store i8* %154, i8** %12, align 8
  %155 = load i8**, i8*** %8, align 8
  %156 = load i8*, i8** %155, align 8
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp ne i32 %158, 41
  br i1 %159, label %160, label %162

160:                                              ; preds = %146
  %161 = call i8* @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i8* %161, i8** %6, align 8
  br label %213

162:                                              ; preds = %146
  %163 = load i8**, i8*** %8, align 8
  %164 = load i8*, i8** %163, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %165, i8** %163, align 8
  %166 = load i32, i32* %14, align 4
  %167 = sext i32 %166 to i64
  %168 = load i64*, i64** %10, align 8
  store i64 %167, i64* %168, align 8
  %169 = load i8*, i8** %12, align 8
  store i8* %169, i8** %6, align 8
  br label %213

170:                                              ; preds = %141
  %171 = load i8**, i8*** %8, align 8
  %172 = load i8*, i8** %171, align 8
  %173 = call i64 @strncasecmp(i8* %172, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 7)
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %199

175:                                              ; preds = %170
  %176 = load i8**, i8*** %8, align 8
  %177 = load i8*, i8** %176, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 7
  store i8* %178, i8** %176, align 8
  %179 = load i32, i32* %7, align 4
  %180 = load i8**, i8*** %8, align 8
  %181 = load i32, i32* %9, align 4
  %182 = load i32, i32* @BFD_RELOC_MEP_TPREL, align 4
  %183 = call i8* @cgen_parse_address(i32 %179, i8** %180, i32 %181, i32 %182, i32* null, i32* %14)
  store i8* %183, i8** %12, align 8
  %184 = load i8**, i8*** %8, align 8
  %185 = load i8*, i8** %184, align 8
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp ne i32 %187, 41
  br i1 %188, label %189, label %191

189:                                              ; preds = %175
  %190 = call i8* @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i8* %190, i8** %6, align 8
  br label %213

191:                                              ; preds = %175
  %192 = load i8**, i8*** %8, align 8
  %193 = load i8*, i8** %192, align 8
  %194 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %194, i8** %192, align 8
  %195 = load i32, i32* %14, align 4
  %196 = sext i32 %195 to i64
  %197 = load i64*, i64** %10, align 8
  store i64 %196, i64* %197, align 8
  %198 = load i8*, i8** %12, align 8
  store i8* %198, i8** %6, align 8
  br label %213

199:                                              ; preds = %170
  %200 = load i8**, i8*** %8, align 8
  %201 = load i8*, i8** %200, align 8
  %202 = load i8, i8* %201, align 1
  %203 = sext i8 %202 to i32
  %204 = icmp eq i32 %203, 37
  br i1 %204, label %205, label %207

205:                                              ; preds = %199
  %206 = call i8* @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  store i8* %206, i8** %6, align 8
  br label %213

207:                                              ; preds = %199
  %208 = load i32, i32* %7, align 4
  %209 = load i8**, i8*** %8, align 8
  %210 = load i32, i32* %9, align 4
  %211 = load i64*, i64** %10, align 8
  %212 = call i8* @cgen_parse_signed_integer(i32 %208, i8** %209, i32 %210, i64* %211)
  store i8* %212, i8** %6, align 8
  br label %213

213:                                              ; preds = %207, %205, %191, %189, %162, %160, %136, %121, %97, %81, %60, %33
  %214 = load i8*, i8** %6, align 8
  ret i8* %214
}

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i8* @cgen_parse_address(i32, i8**, i32, i32, i32*, i32*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i8* @cgen_parse_signed_integer(i32, i8**, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
