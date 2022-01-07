; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_mem_constraint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_mem_constraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s390_address = type { i32, i32, i64 }

@reload_completed = common dso_local global i64 0, align 8
@reload_in_progress = common dso_local global i64 0, align 8
@MEM = common dso_local global i64 0, align 8
@TARGET_LONG_DISPLACEMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s390_mem_constraint(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.s390_address, align 8
  %7 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  store i8 %10, i8* %7, align 1
  %11 = load i8, i8* %7, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 65
  br i1 %13, label %14, label %42

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @MEM_P(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @MEM_VOLATILE_P(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %14
  store i32 0, i32* %3, align 4
  br label %211

23:                                               ; preds = %18
  %24 = load i64, i64* @reload_completed, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i64, i64* @reload_in_progress, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26, %23
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @offsettable_memref_p(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %37

33:                                               ; preds = %26
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @offsettable_nonstrict_memref_p(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33, %29
  store i32 0, i32* %3, align 4
  br label %211

38:                                               ; preds = %33, %29
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  store i8 %41, i8* %7, align 1
  br label %68

42:                                               ; preds = %2
  %43 = load i8, i8* %7, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 66
  br i1 %45, label %46, label %67

46:                                               ; preds = %42
  %47 = load i32, i32* %5, align 4
  %48 = call i64 @GET_CODE(i32 %47)
  %49 = load i64, i64* @MEM, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %211

52:                                               ; preds = %46
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @XEXP(i32 %53, i32 0)
  %55 = call i64 @s390_decompose_address(i32 %54, %struct.s390_address* %6)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %211

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %6, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %211

63:                                               ; preds = %58
  %64 = load i8*, i8** %4, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load i8, i8* %65, align 1
  store i8 %66, i8* %7, align 1
  br label %67

67:                                               ; preds = %63, %42
  br label %68

68:                                               ; preds = %67, %38
  %69 = load i8, i8* %7, align 1
  %70 = sext i8 %69 to i32
  switch i32 %70, label %209 [
    i32 81, label %71
    i32 82, label %99
    i32 83, label %122
    i32 84, label %150
    i32 85, label %172
    i32 87, label %188
    i32 89, label %203
  ]

71:                                               ; preds = %68
  %72 = load i32, i32* %5, align 4
  %73 = call i64 @GET_CODE(i32 %72)
  %74 = load i64, i64* @MEM, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %211

77:                                               ; preds = %71
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @XEXP(i32 %78, i32 0)
  %80 = call i64 @s390_decompose_address(i32 %79, %struct.s390_address* %6)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  store i32 0, i32* %3, align 4
  br label %211

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %6, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  store i32 0, i32* %3, align 4
  br label %211

88:                                               ; preds = %83
  %89 = load i32, i32* @TARGET_LONG_DISPLACEMENT, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %6, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @s390_short_displacement(i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %91
  store i32 0, i32* %3, align 4
  br label %211

97:                                               ; preds = %91
  br label %98

98:                                               ; preds = %97, %88
  br label %210

99:                                               ; preds = %68
  %100 = load i32, i32* %5, align 4
  %101 = call i64 @GET_CODE(i32 %100)
  %102 = load i64, i64* @MEM, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  store i32 0, i32* %3, align 4
  br label %211

105:                                              ; preds = %99
  %106 = load i32, i32* @TARGET_LONG_DISPLACEMENT, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %105
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @XEXP(i32 %109, i32 0)
  %111 = call i64 @s390_decompose_address(i32 %110, %struct.s390_address* %6)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %108
  store i32 0, i32* %3, align 4
  br label %211

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %6, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @s390_short_displacement(i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %114
  store i32 0, i32* %3, align 4
  br label %211

120:                                              ; preds = %114
  br label %121

121:                                              ; preds = %120, %105
  br label %210

122:                                              ; preds = %68
  %123 = load i32, i32* @TARGET_LONG_DISPLACEMENT, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %122
  store i32 0, i32* %3, align 4
  br label %211

126:                                              ; preds = %122
  %127 = load i32, i32* %5, align 4
  %128 = call i64 @GET_CODE(i32 %127)
  %129 = load i64, i64* @MEM, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  store i32 0, i32* %3, align 4
  br label %211

132:                                              ; preds = %126
  %133 = load i32, i32* %5, align 4
  %134 = call i32 @XEXP(i32 %133, i32 0)
  %135 = call i64 @s390_decompose_address(i32 %134, %struct.s390_address* %6)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %132
  store i32 0, i32* %3, align 4
  br label %211

138:                                              ; preds = %132
  %139 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %6, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  store i32 0, i32* %3, align 4
  br label %211

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %6, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @s390_short_displacement(i32 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  store i32 0, i32* %3, align 4
  br label %211

149:                                              ; preds = %143
  br label %210

150:                                              ; preds = %68
  %151 = load i32, i32* @TARGET_LONG_DISPLACEMENT, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %150
  store i32 0, i32* %3, align 4
  br label %211

154:                                              ; preds = %150
  %155 = load i32, i32* %5, align 4
  %156 = call i64 @GET_CODE(i32 %155)
  %157 = load i64, i64* @MEM, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %154
  store i32 0, i32* %3, align 4
  br label %211

160:                                              ; preds = %154
  %161 = load i32, i32* %5, align 4
  %162 = call i32 @XEXP(i32 %161, i32 0)
  %163 = call i64 @s390_decompose_address(i32 %162, %struct.s390_address* %6)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %6, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @s390_short_displacement(i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  store i32 0, i32* %3, align 4
  br label %211

171:                                              ; preds = %165, %160
  br label %210

172:                                              ; preds = %68
  %173 = load i32, i32* @TARGET_LONG_DISPLACEMENT, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %187

175:                                              ; preds = %172
  %176 = load i32, i32* %5, align 4
  %177 = call i64 @s390_decompose_address(i32 %176, %struct.s390_address* %6)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %175
  store i32 0, i32* %3, align 4
  br label %211

180:                                              ; preds = %175
  %181 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %6, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @s390_short_displacement(i32 %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %180
  store i32 0, i32* %3, align 4
  br label %211

186:                                              ; preds = %180
  br label %187

187:                                              ; preds = %186, %172
  br label %210

188:                                              ; preds = %68
  %189 = load i32, i32* @TARGET_LONG_DISPLACEMENT, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %188
  store i32 0, i32* %3, align 4
  br label %211

192:                                              ; preds = %188
  %193 = load i32, i32* %5, align 4
  %194 = call i64 @s390_decompose_address(i32 %193, %struct.s390_address* %6)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %6, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @s390_short_displacement(i32 %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %196
  store i32 0, i32* %3, align 4
  br label %211

202:                                              ; preds = %196, %192
  br label %210

203:                                              ; preds = %68
  %204 = load i32, i32* %5, align 4
  %205 = call i32 @s390_decompose_shift_count(i32 %204, i32* null, i32* null)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %208, label %207

207:                                              ; preds = %203
  store i32 0, i32* %3, align 4
  br label %211

208:                                              ; preds = %203
  br label %210

209:                                              ; preds = %68
  store i32 0, i32* %3, align 4
  br label %211

210:                                              ; preds = %208, %202, %187, %171, %149, %121, %98
  store i32 1, i32* %3, align 4
  br label %211

211:                                              ; preds = %210, %209, %207, %201, %191, %185, %179, %170, %159, %153, %148, %142, %137, %131, %125, %119, %113, %104, %96, %87, %82, %76, %62, %57, %51, %37, %22
  %212 = load i32, i32* %3, align 4
  ret i32 %212
}

declare dso_local i32 @MEM_P(i32) #1

declare dso_local i64 @MEM_VOLATILE_P(i32) #1

declare dso_local i32 @offsettable_memref_p(i32) #1

declare dso_local i32 @offsettable_nonstrict_memref_p(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i64 @s390_decompose_address(i32, %struct.s390_address*) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @s390_short_displacement(i32) #1

declare dso_local i32 @s390_decompose_shift_count(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
