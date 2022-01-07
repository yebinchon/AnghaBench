; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_data_alignment.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_data_alignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@optimize_size = common dso_local global i64 0, align 8
@BITS_PER_WORD = common dso_local global i32 0, align 4
@INTEGER_CST = common dso_local global i64 0, align 8
@TARGET_64BIT = common dso_local global i64 0, align 8
@ARRAY_TYPE = common dso_local global i64 0, align 8
@DFmode = common dso_local global i64 0, align 8
@COMPLEX_TYPE = common dso_local global i64 0, align 8
@DCmode = common dso_local global i64 0, align 8
@XCmode = common dso_local global i64 0, align 8
@RECORD_TYPE = common dso_local global i64 0, align 8
@UNION_TYPE = common dso_local global i64 0, align 8
@QUAL_UNION_TYPE = common dso_local global i64 0, align 8
@REAL_TYPE = common dso_local global i64 0, align 8
@VECTOR_TYPE = common dso_local global i64 0, align 8
@INTEGER_TYPE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ix86_data_alignment(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* @optimize_size, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @BITS_PER_WORD, align 4
  br label %12

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %11, %9
  %13 = phi i32 [ %10, %9 ], [ 256, %11 ]
  store i32 %13, i32* %6, align 4
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @AGGREGATE_TYPE_P(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %12
  %18 = load i64, i64* %4, align 8
  %19 = call i64 @TYPE_SIZE(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %17
  %22 = load i64, i64* %4, align 8
  %23 = call i64 @TYPE_SIZE(i64 %22)
  %24 = call i64 @TREE_CODE(i64 %23)
  %25 = load i64, i64* @INTEGER_CST, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %21
  %28 = load i64, i64* %4, align 8
  %29 = call i64 @TYPE_SIZE(i64 %28)
  %30 = call i32 @TREE_INT_CST_LOW(i64 %29)
  %31 = load i32, i32* %6, align 4
  %32 = icmp uge i32 %30, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = load i64, i64* %4, align 8
  %35 = call i64 @TYPE_SIZE(i64 %34)
  %36 = call i64 @TREE_INT_CST_HIGH(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33, %27
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %42, %38, %33, %21, %17, %12
  %45 = load i64, i64* @TARGET_64BIT, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %76

47:                                               ; preds = %44
  %48 = load i64, i64* %4, align 8
  %49 = call i64 @AGGREGATE_TYPE_P(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %75

51:                                               ; preds = %47
  %52 = load i64, i64* %4, align 8
  %53 = call i64 @TYPE_SIZE(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %51
  %56 = load i64, i64* %4, align 8
  %57 = call i64 @TYPE_SIZE(i64 %56)
  %58 = call i64 @TREE_CODE(i64 %57)
  %59 = load i64, i64* @INTEGER_CST, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %55
  %62 = load i64, i64* %4, align 8
  %63 = call i64 @TYPE_SIZE(i64 %62)
  %64 = call i32 @TREE_INT_CST_LOW(i64 %63)
  %65 = icmp sge i32 %64, 128
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = load i64, i64* %4, align 8
  %68 = call i64 @TYPE_SIZE(i64 %67)
  %69 = call i64 @TREE_INT_CST_HIGH(i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66, %61
  %72 = load i32, i32* %5, align 4
  %73 = icmp slt i32 %72, 128
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 128, i32* %3, align 4
  br label %205

75:                                               ; preds = %71, %66, %55, %51, %47
  br label %76

76:                                               ; preds = %75, %44
  %77 = load i64, i64* %4, align 8
  %78 = call i64 @TREE_CODE(i64 %77)
  %79 = load i64, i64* @ARRAY_TYPE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %102

81:                                               ; preds = %76
  %82 = load i64, i64* %4, align 8
  %83 = call i64 @TREE_TYPE(i64 %82)
  %84 = call i64 @TYPE_MODE(i64 %83)
  %85 = load i64, i64* @DFmode, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = load i32, i32* %5, align 4
  %89 = icmp slt i32 %88, 64
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i32 64, i32* %3, align 4
  br label %205

91:                                               ; preds = %87, %81
  %92 = load i64, i64* %4, align 8
  %93 = call i64 @TREE_TYPE(i64 %92)
  %94 = call i64 @TYPE_MODE(i64 %93)
  %95 = call i64 @ALIGN_MODE_128(i64 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load i32, i32* %5, align 4
  %99 = icmp slt i32 %98, 128
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i32 128, i32* %3, align 4
  br label %205

101:                                              ; preds = %97, %91
  br label %203

102:                                              ; preds = %76
  %103 = load i64, i64* %4, align 8
  %104 = call i64 @TREE_CODE(i64 %103)
  %105 = load i64, i64* @COMPLEX_TYPE, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %126

107:                                              ; preds = %102
  %108 = load i64, i64* %4, align 8
  %109 = call i64 @TYPE_MODE(i64 %108)
  %110 = load i64, i64* @DCmode, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load i32, i32* %5, align 4
  %114 = icmp slt i32 %113, 64
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  store i32 64, i32* %3, align 4
  br label %205

116:                                              ; preds = %112, %107
  %117 = load i64, i64* %4, align 8
  %118 = call i64 @TYPE_MODE(i64 %117)
  %119 = load i64, i64* @XCmode, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %116
  %122 = load i32, i32* %5, align 4
  %123 = icmp slt i32 %122, 128
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  store i32 128, i32* %3, align 4
  br label %205

125:                                              ; preds = %121, %116
  br label %202

126:                                              ; preds = %102
  %127 = load i64, i64* %4, align 8
  %128 = call i64 @TREE_CODE(i64 %127)
  %129 = load i64, i64* @RECORD_TYPE, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %141, label %131

131:                                              ; preds = %126
  %132 = load i64, i64* %4, align 8
  %133 = call i64 @TREE_CODE(i64 %132)
  %134 = load i64, i64* @UNION_TYPE, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %141, label %136

136:                                              ; preds = %131
  %137 = load i64, i64* %4, align 8
  %138 = call i64 @TREE_CODE(i64 %137)
  %139 = load i64, i64* @QUAL_UNION_TYPE, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %166

141:                                              ; preds = %136, %131, %126
  %142 = load i64, i64* %4, align 8
  %143 = call i64 @TYPE_FIELDS(i64 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %166

145:                                              ; preds = %141
  %146 = load i64, i64* %4, align 8
  %147 = call i64 @TYPE_FIELDS(i64 %146)
  %148 = call i64 @DECL_MODE(i64 %147)
  %149 = load i64, i64* @DFmode, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %145
  %152 = load i32, i32* %5, align 4
  %153 = icmp slt i32 %152, 64
  br i1 %153, label %154, label %155

154:                                              ; preds = %151
  store i32 64, i32* %3, align 4
  br label %205

155:                                              ; preds = %151, %145
  %156 = load i64, i64* %4, align 8
  %157 = call i64 @TYPE_FIELDS(i64 %156)
  %158 = call i64 @DECL_MODE(i64 %157)
  %159 = call i64 @ALIGN_MODE_128(i64 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %155
  %162 = load i32, i32* %5, align 4
  %163 = icmp slt i32 %162, 128
  br i1 %163, label %164, label %165

164:                                              ; preds = %161
  store i32 128, i32* %3, align 4
  br label %205

165:                                              ; preds = %161, %155
  br label %201

166:                                              ; preds = %141, %136
  %167 = load i64, i64* %4, align 8
  %168 = call i64 @TREE_CODE(i64 %167)
  %169 = load i64, i64* @REAL_TYPE, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %181, label %171

171:                                              ; preds = %166
  %172 = load i64, i64* %4, align 8
  %173 = call i64 @TREE_CODE(i64 %172)
  %174 = load i64, i64* @VECTOR_TYPE, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %181, label %176

176:                                              ; preds = %171
  %177 = load i64, i64* %4, align 8
  %178 = call i64 @TREE_CODE(i64 %177)
  %179 = load i64, i64* @INTEGER_TYPE, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %200

181:                                              ; preds = %176, %171, %166
  %182 = load i64, i64* %4, align 8
  %183 = call i64 @TYPE_MODE(i64 %182)
  %184 = load i64, i64* @DFmode, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %181
  %187 = load i32, i32* %5, align 4
  %188 = icmp slt i32 %187, 64
  br i1 %188, label %189, label %190

189:                                              ; preds = %186
  store i32 64, i32* %3, align 4
  br label %205

190:                                              ; preds = %186, %181
  %191 = load i64, i64* %4, align 8
  %192 = call i64 @TYPE_MODE(i64 %191)
  %193 = call i64 @ALIGN_MODE_128(i64 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %190
  %196 = load i32, i32* %5, align 4
  %197 = icmp slt i32 %196, 128
  br i1 %197, label %198, label %199

198:                                              ; preds = %195
  store i32 128, i32* %3, align 4
  br label %205

199:                                              ; preds = %195, %190
  br label %200

200:                                              ; preds = %199, %176
  br label %201

201:                                              ; preds = %200, %165
  br label %202

202:                                              ; preds = %201, %125
  br label %203

203:                                              ; preds = %202, %101
  %204 = load i32, i32* %5, align 4
  store i32 %204, i32* %3, align 4
  br label %205

205:                                              ; preds = %203, %198, %189, %164, %154, %124, %115, %100, %90, %74
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

declare dso_local i64 @AGGREGATE_TYPE_P(i64) #1

declare dso_local i64 @TYPE_SIZE(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @TREE_INT_CST_LOW(i64) #1

declare dso_local i64 @TREE_INT_CST_HIGH(i64) #1

declare dso_local i64 @TYPE_MODE(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @ALIGN_MODE_128(i64) #1

declare dso_local i64 @TYPE_FIELDS(i64) #1

declare dso_local i64 @DECL_MODE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
