; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_shadow_tag_warned.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_shadow_tag_warned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_declspecs = type { i64, i64, i64, i64, i64, i64, i64, i64, i32, i32 }

@RECORD_TYPE = common dso_local global i32 0, align 4
@UNION_TYPE = common dso_local global i32 0, align 4
@ENUMERAL_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"unnamed struct/union that defines no instances\00", align 1
@csc_none = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [70 x i8] c"empty declaration with storage class specifier does not redeclare tag\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"empty declaration with type qualifier does not redeclare tag\00", align 1
@pending_invalid_xref = common dso_local global i64 0, align 8
@in_system_header = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"useless type name in empty declaration\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"%<inline%> in empty declaration\00", align 1
@current_scope = common dso_local global i64 0, align 8
@file_scope = common dso_local global i64 0, align 8
@csc_auto = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [41 x i8] c"%<auto%> in file-scope empty declaration\00", align 1
@csc_register = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [45 x i8] c"%<register%> in file-scope empty declaration\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"useless storage class specifier in empty declaration\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"useless %<__thread%> in empty declaration\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"useless type qualifier in empty declaration\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"empty declaration\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shadow_tag_warned(%struct.c_declspecs* %0, i32 %1) #0 {
  %3 = alloca %struct.c_declspecs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.c_declspecs* %0, %struct.c_declspecs** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %11 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %127

14:                                               ; preds = %2
  %15 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %16 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %15, i32 0, i32 9
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %127, label %19

19:                                               ; preds = %14
  %20 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %21 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %20, i32 0, i32 7
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %127, label %24

24:                                               ; preds = %19
  %25 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %26 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @TREE_CODE(i64 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @RECORD_TYPE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %41, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @UNION_TYPE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @ENUMERAL_TYPE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %117

41:                                               ; preds = %37, %33, %24
  %42 = load i64, i64* %6, align 8
  %43 = call i64 @TYPE_NAME(i64 %42)
  store i64 %43, i64* %8, align 8
  store i32 1, i32* %5, align 4
  %44 = load i64, i64* %8, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 1
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @ENUMERAL_TYPE, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = call i32 @pedwarn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %55

55:                                               ; preds = %53, %49, %46
  br label %116

56:                                               ; preds = %41
  %57 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %58 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %57, i32 0, i32 8
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %74, label %61

61:                                               ; preds = %56
  %62 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %63 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @csc_none, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 1
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = call i32 @pedwarn(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %67
  store i32 1, i32* %4, align 4
  %73 = call i32 (...) @pending_xref_error()
  br label %115

74:                                               ; preds = %61, %56
  %75 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %76 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %75, i32 0, i32 8
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %101, label %79

79:                                               ; preds = %74
  %80 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %81 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %94, label %84

84:                                               ; preds = %79
  %85 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %86 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %84
  %90 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %91 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %89, %84, %79
  %95 = load i32, i32* %4, align 4
  %96 = icmp ne i32 %95, 1
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = call i32 @pedwarn(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %94
  store i32 1, i32* %4, align 4
  %100 = call i32 (...) @pending_xref_error()
  br label %114

101:                                              ; preds = %89, %74
  store i64 0, i64* @pending_invalid_xref, align 8
  %102 = load i32, i32* %7, align 4
  %103 = load i64, i64* %8, align 8
  %104 = call i64 @lookup_tag(i32 %102, i64 %103, i32 1)
  store i64 %104, i64* %9, align 8
  %105 = load i64, i64* %9, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %101
  %108 = load i32, i32* %7, align 4
  %109 = call i64 @make_node(i32 %108)
  store i64 %109, i64* %9, align 8
  %110 = load i64, i64* %8, align 8
  %111 = load i64, i64* %9, align 8
  %112 = call i32 @pushtag(i64 %110, i64 %111)
  br label %113

113:                                              ; preds = %107, %101
  br label %114

114:                                              ; preds = %113, %99
  br label %115

115:                                              ; preds = %114, %72
  br label %116

116:                                              ; preds = %115, %55
  br label %126

117:                                              ; preds = %37
  %118 = load i32, i32* %4, align 4
  %119 = icmp ne i32 %118, 1
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load i32, i32* @in_system_header, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %120
  %124 = call i32 @pedwarn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %125

125:                                              ; preds = %123, %120, %117
  br label %126

126:                                              ; preds = %125, %116
  br label %141

127:                                              ; preds = %19, %14, %2
  %128 = load i32, i32* %4, align 4
  %129 = icmp ne i32 %128, 1
  br i1 %129, label %130, label %140

130:                                              ; preds = %127
  %131 = load i32, i32* @in_system_header, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %140, label %133

133:                                              ; preds = %130
  %134 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %135 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %134, i32 0, i32 7
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %133
  %139 = call i32 @pedwarn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %140

140:                                              ; preds = %138, %133, %130, %127
  br label %141

141:                                              ; preds = %140, %126
  store i64 0, i64* @pending_invalid_xref, align 8
  %142 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %143 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %142, i32 0, i32 6
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %141
  %147 = call i32 @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %148

148:                                              ; preds = %146, %141
  %149 = load i64, i64* @current_scope, align 8
  %150 = load i64, i64* @file_scope, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %160

152:                                              ; preds = %148
  %153 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %154 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @csc_auto, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %152
  %159 = call i32 @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %160

160:                                              ; preds = %158, %152, %148
  %161 = load i64, i64* @current_scope, align 8
  %162 = load i64, i64* @file_scope, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %172

164:                                              ; preds = %160
  %165 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %166 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @csc_register, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %164
  %171 = call i32 @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %172

172:                                              ; preds = %170, %164, %160
  %173 = load i32, i32* %4, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %186, label %175

175:                                              ; preds = %172
  %176 = load i32, i32* @in_system_header, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %186, label %178

178:                                              ; preds = %175
  %179 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %180 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @csc_none, align 8
  %183 = icmp ne i64 %181, %182
  br i1 %183, label %184, label %186

184:                                              ; preds = %178
  %185 = call i32 @warning(i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0))
  store i32 2, i32* %4, align 4
  br label %186

186:                                              ; preds = %184, %178, %175, %172
  %187 = load i32, i32* %4, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %199, label %189

189:                                              ; preds = %186
  %190 = load i32, i32* @in_system_header, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %199, label %192

192:                                              ; preds = %189
  %193 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %194 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %193, i32 0, i32 5
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %192
  %198 = call i32 @warning(i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  store i32 2, i32* %4, align 4
  br label %199

199:                                              ; preds = %197, %192, %189, %186
  %200 = load i32, i32* %4, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %222, label %202

202:                                              ; preds = %199
  %203 = load i32, i32* @in_system_header, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %222, label %205

205:                                              ; preds = %202
  %206 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %207 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %206, i32 0, i32 4
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %220, label %210

210:                                              ; preds = %205
  %211 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %212 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %220, label %215

215:                                              ; preds = %210
  %216 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %217 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %215, %210, %205
  %221 = call i32 @warning(i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0))
  store i32 2, i32* %4, align 4
  br label %222

222:                                              ; preds = %220, %215, %202, %199
  %223 = load i32, i32* %4, align 4
  %224 = icmp ne i32 %223, 1
  br i1 %224, label %225, label %231

225:                                              ; preds = %222
  %226 = load i32, i32* %5, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %230, label %228

228:                                              ; preds = %225
  %229 = call i32 @pedwarn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  br label %230

230:                                              ; preds = %228, %225
  br label %231

231:                                              ; preds = %230, %222
  ret void
}

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i64 @TYPE_NAME(i64) #1

declare dso_local i32 @pedwarn(i8*) #1

declare dso_local i32 @pending_xref_error(...) #1

declare dso_local i64 @lookup_tag(i32, i64, i32) #1

declare dso_local i64 @make_node(i32) #1

declare dso_local i32 @pushtag(i64, i64) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @warning(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
