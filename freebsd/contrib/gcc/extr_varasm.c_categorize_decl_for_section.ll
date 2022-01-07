; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_categorize_decl_for_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_categorize_decl_for_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 (i32)*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (...)* }

@FUNCTION_DECL = common dso_local global i64 0, align 8
@SECCAT_TEXT = common dso_local global i32 0, align 4
@STRING_CST = common dso_local global i64 0, align 8
@flag_mudflap = common dso_local global i64 0, align 8
@SECCAT_RODATA = common dso_local global i32 0, align 4
@SECCAT_RODATA_MERGE_STR = common dso_local global i32 0, align 4
@VAR_DECL = common dso_local global i64 0, align 8
@SECCAT_BSS = common dso_local global i32 0, align 4
@targetm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@SECCAT_DATA_REL_LOCAL = common dso_local global i32 0, align 4
@SECCAT_DATA_REL = common dso_local global i32 0, align 4
@SECCAT_DATA = common dso_local global i32 0, align 4
@SECCAT_DATA_REL_RO_LOCAL = common dso_local global i32 0, align 4
@SECCAT_DATA_REL_RO = common dso_local global i32 0, align 4
@flag_merge_constants = common dso_local global i32 0, align 4
@SECCAT_RODATA_MERGE_STR_INIT = common dso_local global i32 0, align 4
@SECCAT_RODATA_MERGE_CONST = common dso_local global i32 0, align 4
@CONSTRUCTOR = common dso_local global i64 0, align 8
@flag_zero_initialized_in_bss = common dso_local global i64 0, align 8
@SECCAT_TBSS = common dso_local global i32 0, align 4
@SECCAT_TDATA = common dso_local global i32 0, align 4
@SECCAT_SBSS = common dso_local global i32 0, align 4
@SECCAT_SRODATA = common dso_local global i32 0, align 4
@SECCAT_SDATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @categorize_decl_for_section(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @TREE_CODE(i32 %7)
  %9 = load i64, i64* @FUNCTION_DECL, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @SECCAT_TEXT, align 4
  store i32 %12, i32* %3, align 4
  br label %187

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @TREE_CODE(i32 %14)
  %16 = load i64, i64* @STRING_CST, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load i64, i64* @flag_mudflap, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @SECCAT_RODATA, align 4
  store i32 %22, i32* %3, align 4
  br label %187

23:                                               ; preds = %18
  %24 = load i32, i32* @SECCAT_RODATA_MERGE_STR, align 4
  store i32 %24, i32* %3, align 4
  br label %187

25:                                               ; preds = %13
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @TREE_CODE(i32 %26)
  %28 = load i64, i64* @VAR_DECL, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %105

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  %32 = call i64 @bss_initializer_p(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @SECCAT_BSS, align 4
  store i32 %35, i32* %6, align 4
  br label %104

36:                                               ; preds = %30
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @TREE_READONLY(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load i32, i32* %4, align 4
  %42 = call i64 @TREE_SIDE_EFFECTS(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @DECL_INITIAL(i32 %45)
  %47 = call i32 @TREE_CONSTANT(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %67, label %49

49:                                               ; preds = %44, %40, %36
  %50 = load i32, i32* %5, align 4
  %51 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 2, i32 0), align 8
  %52 = call i32 (...) %51()
  %53 = and i32 %50, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %49
  %56 = load i32, i32* %5, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* @SECCAT_DATA_REL_LOCAL, align 4
  br label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @SECCAT_DATA_REL, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  store i32 %63, i32* %6, align 4
  br label %66

64:                                               ; preds = %49
  %65 = load i32, i32* @SECCAT_DATA, align 4
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %64, %62
  br label %103

67:                                               ; preds = %44
  %68 = load i32, i32* %5, align 4
  %69 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 2, i32 0), align 8
  %70 = call i32 (...) %69()
  %71 = and i32 %68, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %67
  %74 = load i32, i32* %5, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32, i32* @SECCAT_DATA_REL_RO_LOCAL, align 4
  br label %80

78:                                               ; preds = %73
  %79 = load i32, i32* @SECCAT_DATA_REL_RO, align 4
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i32 [ %77, %76 ], [ %79, %78 ]
  store i32 %81, i32* %6, align 4
  br label %102

82:                                               ; preds = %67
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* @flag_merge_constants, align 4
  %87 = icmp slt i32 %86, 2
  br i1 %87, label %88, label %90

88:                                               ; preds = %85, %82
  %89 = load i32, i32* @SECCAT_RODATA, align 4
  store i32 %89, i32* %6, align 4
  br label %101

90:                                               ; preds = %85
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @DECL_INITIAL(i32 %91)
  %93 = call i64 @TREE_CODE(i32 %92)
  %94 = load i64, i64* @STRING_CST, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = load i32, i32* @SECCAT_RODATA_MERGE_STR_INIT, align 4
  store i32 %97, i32* %6, align 4
  br label %100

98:                                               ; preds = %90
  %99 = load i32, i32* @SECCAT_RODATA_MERGE_CONST, align 4
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %98, %96
  br label %101

101:                                              ; preds = %100, %88
  br label %102

102:                                              ; preds = %101, %80
  br label %103

103:                                              ; preds = %102, %66
  br label %104

104:                                              ; preds = %103, %34
  br label %132

105:                                              ; preds = %25
  %106 = load i32, i32* %4, align 4
  %107 = call i64 @TREE_CODE(i32 %106)
  %108 = load i64, i64* @CONSTRUCTOR, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %129

110:                                              ; preds = %105
  %111 = load i32, i32* %5, align 4
  %112 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 2, i32 0), align 8
  %113 = call i32 (...) %112()
  %114 = and i32 %111, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %124, label %116

116:                                              ; preds = %110
  %117 = load i32, i32* %4, align 4
  %118 = call i64 @TREE_SIDE_EFFECTS(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %116
  %121 = load i32, i32* %4, align 4
  %122 = call i32 @TREE_CONSTANT(i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %120, %116, %110
  %125 = load i32, i32* @SECCAT_DATA, align 4
  store i32 %125, i32* %6, align 4
  br label %128

126:                                              ; preds = %120
  %127 = load i32, i32* @SECCAT_RODATA, align 4
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %126, %124
  br label %131

129:                                              ; preds = %105
  %130 = load i32, i32* @SECCAT_RODATA, align 4
  store i32 %130, i32* %6, align 4
  br label %131

131:                                              ; preds = %129, %128
  br label %132

132:                                              ; preds = %131, %104
  br label %133

133:                                              ; preds = %132
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %4, align 4
  %136 = call i64 @TREE_CODE(i32 %135)
  %137 = load i64, i64* @VAR_DECL, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %160

139:                                              ; preds = %134
  %140 = load i32, i32* %4, align 4
  %141 = call i64 @DECL_THREAD_LOCAL_P(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %160

143:                                              ; preds = %139
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* @SECCAT_BSS, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %155, label %147

147:                                              ; preds = %143
  %148 = load i64, i64* @flag_zero_initialized_in_bss, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %147
  %151 = load i32, i32* %4, align 4
  %152 = call i32 @DECL_INITIAL(i32 %151)
  %153 = call i64 @initializer_zerop(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %150, %143
  %156 = load i32, i32* @SECCAT_TBSS, align 4
  store i32 %156, i32* %6, align 4
  br label %159

157:                                              ; preds = %150, %147
  %158 = load i32, i32* @SECCAT_TDATA, align 4
  store i32 %158, i32* %6, align 4
  br label %159

159:                                              ; preds = %157, %155
  br label %185

160:                                              ; preds = %139, %134
  %161 = load i64 (i32)*, i64 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 1), align 8
  %162 = load i32, i32* %4, align 4
  %163 = call i64 %161(i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %184

165:                                              ; preds = %160
  %166 = load i32, i32* %6, align 4
  %167 = load i32, i32* @SECCAT_BSS, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %165
  %170 = load i32, i32* @SECCAT_SBSS, align 4
  store i32 %170, i32* %6, align 4
  br label %183

171:                                              ; preds = %165
  %172 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 0), align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %171
  %175 = load i32, i32* %6, align 4
  %176 = load i32, i32* @SECCAT_RODATA, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %174
  %179 = load i32, i32* @SECCAT_SRODATA, align 4
  store i32 %179, i32* %6, align 4
  br label %182

180:                                              ; preds = %174, %171
  %181 = load i32, i32* @SECCAT_SDATA, align 4
  store i32 %181, i32* %6, align 4
  br label %182

182:                                              ; preds = %180, %178
  br label %183

183:                                              ; preds = %182, %169
  br label %184

184:                                              ; preds = %183, %160
  br label %185

185:                                              ; preds = %184, %159
  %186 = load i32, i32* %6, align 4
  store i32 %186, i32* %3, align 4
  br label %187

187:                                              ; preds = %185, %23, %21, %11
  %188 = load i32, i32* %3, align 4
  ret i32 %188
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @bss_initializer_p(i32) #1

declare dso_local i32 @TREE_READONLY(i32) #1

declare dso_local i64 @TREE_SIDE_EFFECTS(i32) #1

declare dso_local i32 @TREE_CONSTANT(i32) #1

declare dso_local i32 @DECL_INITIAL(i32) #1

declare dso_local i64 @DECL_THREAD_LOCAL_P(i32) #1

declare dso_local i64 @initializer_zerop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
