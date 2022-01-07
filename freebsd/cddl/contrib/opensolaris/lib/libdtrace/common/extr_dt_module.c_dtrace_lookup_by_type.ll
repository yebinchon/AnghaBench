; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_module.c_dtrace_lookup_by_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_module.c_dtrace_lookup_by_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, i64, i64, i32, i32**, i32* }
%struct.TYPE_17__ = type { i64, i32*, i32 }

@DTRACE_OBJ_EVERY = common dso_local global i8* null, align 8
@DTRACE_OBJ_KMODS = common dso_local global i8* null, align 8
@DTRACE_OBJ_UMODS = common dso_local global i8* null, align 8
@DT_DM_KERNEL = common dso_local global i64 0, align 8
@EDT_NOMEM = common dso_local global i32 0, align 4
@CTF_ERR = common dso_local global i64 0, align 8
@CTF_K_FORWARD = common dso_local global i64 0, align 8
@EDT_NOTYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtrace_lookup_by_type(%struct.TYPE_18__* %0, i8* %1, i8* %2, %struct.TYPE_17__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_17__, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %9, align 8
  store i32 0, i32* %12, align 4
  store i64 0, i64* %21, align 8
  store i64 0, i64* %22, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i8*, i8** @DTRACE_OBJ_EVERY, align 8
  %25 = icmp ne i8* %23, %24
  br i1 %25, label %26, label %47

26:                                               ; preds = %4
  %27 = load i8*, i8** %7, align 8
  %28 = load i8*, i8** @DTRACE_OBJ_KMODS, align 8
  %29 = icmp ne i8* %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %26
  %31 = load i8*, i8** %7, align 8
  %32 = load i8*, i8** @DTRACE_OBJ_UMODS, align 8
  %33 = icmp ne i8* %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call %struct.TYPE_19__* @dt_module_from_object(%struct.TYPE_18__* %35, i8* %36)
  store %struct.TYPE_19__* %37, %struct.TYPE_19__** %11, align 8
  %38 = icmp eq %struct.TYPE_19__* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 -1, i32* %5, align 4
  br label %218

40:                                               ; preds = %34
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %43 = call i32 @dt_module_load(%struct.TYPE_18__* %41, %struct.TYPE_19__* %42)
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 -1, i32* %5, align 4
  br label %218

46:                                               ; preds = %40
  store i64 1, i64* %14, align 8
  store i32 1, i32* %16, align 4
  br label %67

47:                                               ; preds = %30, %26, %4
  %48 = load i8*, i8** %7, align 8
  %49 = load i8*, i8** @DTRACE_OBJ_KMODS, align 8
  %50 = icmp eq i8* %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i64, i64* @DT_DM_KERNEL, align 8
  store i64 %52, i64* %22, align 8
  store i64 %52, i64* %21, align 8
  br label %60

53:                                               ; preds = %47
  %54 = load i8*, i8** %7, align 8
  %55 = load i8*, i8** @DTRACE_OBJ_UMODS, align 8
  %56 = icmp eq i8* %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i64, i64* @DT_DM_KERNEL, align 8
  store i64 %58, i64* %21, align 8
  br label %59

59:                                               ; preds = %57, %53
  br label %60

60:                                               ; preds = %59, %51
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 1
  %63 = call %struct.TYPE_19__* @dt_list_next(%struct.TYPE_19__* %62)
  store %struct.TYPE_19__* %63, %struct.TYPE_19__** %11, align 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %14, align 8
  store i32 0, i32* %16, align 4
  br label %67

67:                                               ; preds = %60, %46
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %69 = icmp eq %struct.TYPE_17__* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store %struct.TYPE_17__* %10, %struct.TYPE_17__** %9, align 8
  br label %71

71:                                               ; preds = %70, %67
  br label %72

72:                                               ; preds = %205, %71
  %73 = load i64, i64* %14, align 8
  %74 = icmp ugt i64 %73, 0
  br i1 %74, label %75, label %210

75:                                               ; preds = %72
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %21, align 8
  %80 = and i64 %78, %79
  %81 = load i64, i64* %22, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %205

84:                                               ; preds = %75
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %87 = call i64 @dt_module_hasctf(%struct.TYPE_18__* %85, %struct.TYPE_19__* %86)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load i32, i32* %16, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i32 -1, i32* %5, align 4
  br label %218

93:                                               ; preds = %89
  br label %205

94:                                               ; preds = %84
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %94
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 5
  %102 = load i32*, i32** %101, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = call i64 @ctf_lookup_by_name(i32* %102, i8* %103)
  store i64 %104, i64* %13, align 8
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 5
  %107 = load i32*, i32** %106, align 8
  store i32* %107, i32** %17, align 8
  br label %177

108:                                              ; preds = %94
  %109 = load i8*, i8** %8, align 8
  %110 = call i8* @strchr(i8* %109, i8 signext 96)
  store i8* %110, i8** %19, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %150

112:                                              ; preds = %108
  %113 = load i8*, i8** %8, align 8
  %114 = call i8* @strdup(i8* %113)
  store i8* %114, i8** %18, align 8
  %115 = load i8*, i8** %18, align 8
  %116 = icmp eq i8* %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %119 = load i32, i32* @EDT_NOMEM, align 4
  %120 = call i32 @dt_set_errno(%struct.TYPE_18__* %118, i32 %119)
  store i32 %120, i32* %5, align 4
  br label %218

121:                                              ; preds = %112
  %122 = load i8*, i8** %18, align 8
  %123 = call i8* @strchr(i8* %122, i8 signext 96)
  store i8* %123, i8** %19, align 8
  %124 = load i8*, i8** %19, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 1
  %126 = call i8* @strchr(i8* %125, i8 signext 96)
  store i8* %126, i8** %20, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %130

128:                                              ; preds = %121
  %129 = load i8*, i8** %20, align 8
  store i8* %129, i8** %19, align 8
  br label %130

130:                                              ; preds = %128, %121
  %131 = load i8*, i8** %19, align 8
  store i8 0, i8* %131, align 1
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %134 = load i8*, i8** %18, align 8
  %135 = call i32* @dt_module_getctflib(%struct.TYPE_18__* %132, %struct.TYPE_19__* %133, i8* %134)
  store i32* %135, i32** %17, align 8
  %136 = load i32*, i32** %17, align 8
  %137 = icmp eq i32* %136, null
  br i1 %137, label %145, label %138

138:                                              ; preds = %130
  %139 = load i32*, i32** %17, align 8
  %140 = load i8*, i8** %19, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 1
  %142 = call i64 @ctf_lookup_by_name(i32* %139, i8* %141)
  store i64 %142, i64* %13, align 8
  %143 = load i64, i64* @CTF_ERR, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %138, %130
  %146 = load i64, i64* @CTF_ERR, align 8
  store i64 %146, i64* %13, align 8
  br label %147

147:                                              ; preds = %145, %138
  %148 = load i8*, i8** %18, align 8
  %149 = call i32 @free(i8* %148)
  br label %176

150:                                              ; preds = %108
  store i64 0, i64* %15, align 8
  br label %151

151:                                              ; preds = %172, %150
  %152 = load i64, i64* %15, align 8
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = icmp ult i64 %152, %155
  br i1 %156, label %157, label %175

157:                                              ; preds = %151
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 4
  %160 = load i32**, i32*** %159, align 8
  %161 = load i64, i64* %15, align 8
  %162 = getelementptr inbounds i32*, i32** %160, i64 %161
  %163 = load i32*, i32** %162, align 8
  store i32* %163, i32** %17, align 8
  %164 = load i32*, i32** %17, align 8
  %165 = load i8*, i8** %8, align 8
  %166 = call i64 @ctf_lookup_by_name(i32* %164, i8* %165)
  store i64 %166, i64* %13, align 8
  %167 = load i64, i64* %13, align 8
  %168 = load i64, i64* @CTF_ERR, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %157
  br label %175

171:                                              ; preds = %157
  br label %172

172:                                              ; preds = %171
  %173 = load i64, i64* %15, align 8
  %174 = add i64 %173, 1
  store i64 %174, i64* %15, align 8
  br label %151

175:                                              ; preds = %170, %151
  br label %176

176:                                              ; preds = %175, %147
  br label %177

177:                                              ; preds = %176, %99
  %178 = load i64, i64* %13, align 8
  %179 = load i64, i64* @CTF_ERR, align 8
  %180 = icmp ne i64 %178, %179
  br i1 %180, label %181, label %204

181:                                              ; preds = %177
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 2
  store i32 %184, i32* %186, align 8
  %187 = load i32*, i32** %17, align 8
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 1
  store i32* %187, i32** %189, align 8
  %190 = load i64, i64* %13, align 8
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 0
  store i64 %190, i64* %192, align 8
  %193 = load i32*, i32** %17, align 8
  %194 = load i32*, i32** %17, align 8
  %195 = load i64, i64* %13, align 8
  %196 = call i32 @ctf_type_resolve(i32* %194, i64 %195)
  %197 = call i64 @ctf_type_kind(i32* %193, i32 %196)
  %198 = load i64, i64* @CTF_K_FORWARD, align 8
  %199 = icmp ne i64 %197, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %181
  store i32 0, i32* %5, align 4
  br label %218

201:                                              ; preds = %181
  %202 = load i32, i32* %12, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %12, align 4
  br label %204

204:                                              ; preds = %201, %177
  br label %205

205:                                              ; preds = %204, %93, %83
  %206 = load i64, i64* %14, align 8
  %207 = add i64 %206, -1
  store i64 %207, i64* %14, align 8
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %209 = call %struct.TYPE_19__* @dt_list_next(%struct.TYPE_19__* %208)
  store %struct.TYPE_19__* %209, %struct.TYPE_19__** %11, align 8
  br label %72

210:                                              ; preds = %72
  %211 = load i32, i32* %12, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %210
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %215 = load i32, i32* @EDT_NOTYPE, align 4
  %216 = call i32 @dt_set_errno(%struct.TYPE_18__* %214, i32 %215)
  store i32 %216, i32* %5, align 4
  br label %218

217:                                              ; preds = %210
  store i32 0, i32* %5, align 4
  br label %218

218:                                              ; preds = %217, %213, %200, %117, %92, %45, %39
  %219 = load i32, i32* %5, align 4
  ret i32 %219
}

declare dso_local %struct.TYPE_19__* @dt_module_from_object(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @dt_module_load(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @dt_list_next(%struct.TYPE_19__*) #1

declare dso_local i64 @dt_module_hasctf(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i64 @ctf_lookup_by_name(i32*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @dt_set_errno(%struct.TYPE_18__*, i32) #1

declare dso_local i32* @dt_module_getctflib(%struct.TYPE_18__*, %struct.TYPE_19__*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @ctf_type_kind(i32*, i32) #1

declare dso_local i32 @ctf_type_resolve(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
