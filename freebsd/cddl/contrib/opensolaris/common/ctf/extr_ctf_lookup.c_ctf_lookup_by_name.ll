; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_lookup.c_ctf_lookup_by_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_lookup.c_ctf_lookup_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64*, i32, %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8*, i32, i32 }
%struct.TYPE_10__ = type { i64 }

@ctf_lookup_by_name.delimiters = internal constant [8 x i8] c" \09\0A\0D\0B\0C*\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CTF_ERR = common dso_local global i64 0, align 8
@ECTF_NOTYPE = common dso_local global i32 0, align 4
@LCTF_CHILD = common dso_local global i32 0, align 4
@ECTF_SYNTAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ctf_lookup_by_name(%struct.TYPE_11__* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 0, i64* %11, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = load i32, i32* @EINVAL, align 4
  %19 = call i64 @ctf_set_errno(%struct.TYPE_11__* %17, i32 %18)
  store i64 %19, i64* %3, align 8
  br label %238

20:                                               ; preds = %2
  %21 = load i8*, i8** %5, align 8
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  store i8* %26, i8** %10, align 8
  br label %27

27:                                               ; preds = %205, %20
  %28 = load i8*, i8** %8, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %207

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %38, %32
  %34 = load i8*, i8** %8, align 8
  %35 = load i8, i8* %34, align 1
  %36 = call i64 @isspace(i8 signext %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %8, align 8
  br label %33

41:                                               ; preds = %33
  %42 = load i8*, i8** %8, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = icmp eq i8* %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %207

46:                                               ; preds = %41
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = call i8* @strpbrk(i8* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @ctf_lookup_by_name.delimiters, i64 0, i64 0))
  store i8* %49, i8** %9, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i8*, i8** %10, align 8
  store i8* %52, i8** %9, align 8
  br label %53

53:                                               ; preds = %51, %46
  %54 = load i8*, i8** %8, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 42
  br i1 %57, label %58, label %99

58:                                               ; preds = %53
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = load i64, i64* %11, align 8
  %63 = call i64 @CTF_TYPE_TO_INDEX(i64 %62)
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %12, align 8
  %66 = load i64, i64* %12, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %89

68:                                               ; preds = %58
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %70 = load i64, i64* %11, align 8
  %71 = call i64 @ctf_type_resolve(%struct.TYPE_11__* %69, i64 %70)
  store i64 %71, i64* %12, align 8
  %72 = load i64, i64* %12, align 8
  %73 = load i64, i64* @CTF_ERR, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %84, label %75

75:                                               ; preds = %68
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = load i64, i64* %12, align 8
  %80 = call i64 @CTF_TYPE_TO_INDEX(i64 %79)
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %12, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %75, %68
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %86 = load i32, i32* @ECTF_NOTYPE, align 4
  %87 = call i64 @ctf_set_errno(%struct.TYPE_11__* %85, i32 %86)
  br label %221

88:                                               ; preds = %75
  br label %89

89:                                               ; preds = %88, %58
  %90 = load i64, i64* %12, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @LCTF_CHILD, align 4
  %95 = and i32 %93, %94
  %96 = call i64 @CTF_INDEX_TO_TYPE(i64 %90, i32 %95)
  store i64 %96, i64* %11, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  store i8* %98, i8** %9, align 8
  br label %205

99:                                               ; preds = %53
  %100 = load i8*, i8** %8, align 8
  %101 = load i8*, i8** %9, align 8
  %102 = load i8*, i8** %8, align 8
  %103 = ptrtoint i8* %101 to i64
  %104 = ptrtoint i8* %102 to i64
  %105 = sub i64 %103, %104
  %106 = call i64 @isqualifier(i8* %100, i64 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %99
  br label %205

109:                                              ; preds = %99
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  store %struct.TYPE_9__* %112, %struct.TYPE_9__** %6, align 8
  br label %113

113:                                              ; preds = %192, %109
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %195

118:                                              ; preds = %113
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 0
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %138, label %126

126:                                              ; preds = %118
  %127 = load i8*, i8** %8, align 8
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = load i8*, i8** %9, align 8
  %132 = load i8*, i8** %8, align 8
  %133 = ptrtoint i8* %131 to i64
  %134 = ptrtoint i8* %132 to i64
  %135 = sub i64 %133, %134
  %136 = call i64 @strncmp(i8* %127, i8* %130, i64 %135)
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %191

138:                                              ; preds = %126, %118
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load i8*, i8** %8, align 8
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i8, i8* %142, i64 %143
  store i8* %144, i8** %8, align 8
  br label %145

145:                                              ; preds = %151, %138
  %146 = load i8*, i8** %8, align 8
  %147 = load i8, i8* %146, align 1
  %148 = call i64 @isspace(i8 signext %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %145
  br label %151

151:                                              ; preds = %150
  %152 = load i8*, i8** %8, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %8, align 8
  br label %145

154:                                              ; preds = %145
  %155 = load i8*, i8** %8, align 8
  %156 = call i8* @strchr(i8* %155, i8 signext 42)
  store i8* %156, i8** %9, align 8
  %157 = icmp eq i8* %156, null
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = load i8*, i8** %10, align 8
  store i8* %159, i8** %9, align 8
  br label %160

160:                                              ; preds = %158, %154
  br label %161

161:                                              ; preds = %167, %160
  %162 = load i8*, i8** %9, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 -1
  %164 = load i8, i8* %163, align 1
  %165 = call i64 @isspace(i8 signext %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %161
  %168 = load i8*, i8** %9, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 -1
  store i8* %169, i8** %9, align 8
  br label %161

170:                                              ; preds = %161
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %175 = load i8*, i8** %8, align 8
  %176 = load i8*, i8** %9, align 8
  %177 = load i8*, i8** %8, align 8
  %178 = ptrtoint i8* %176 to i64
  %179 = ptrtoint i8* %177 to i64
  %180 = sub i64 %178, %179
  %181 = call %struct.TYPE_10__* @ctf_hash_lookup(i32 %173, %struct.TYPE_11__* %174, i8* %175, i64 %180)
  store %struct.TYPE_10__* %181, %struct.TYPE_10__** %7, align 8
  %182 = icmp eq %struct.TYPE_10__* %181, null
  br i1 %182, label %183, label %187

183:                                              ; preds = %170
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %185 = load i32, i32* @ECTF_NOTYPE, align 4
  %186 = call i64 @ctf_set_errno(%struct.TYPE_11__* %184, i32 %185)
  br label %221

187:                                              ; preds = %170
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  store i64 %190, i64* %11, align 8
  br label %195

191:                                              ; preds = %126
  br label %192

192:                                              ; preds = %191
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 1
  store %struct.TYPE_9__* %194, %struct.TYPE_9__** %6, align 8
  br label %113

195:                                              ; preds = %187, %113
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = icmp eq i8* %198, null
  br i1 %199, label %200, label %204

200:                                              ; preds = %195
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %202 = load i32, i32* @ECTF_NOTYPE, align 4
  %203 = call i64 @ctf_set_errno(%struct.TYPE_11__* %201, i32 %202)
  br label %221

204:                                              ; preds = %195
  br label %205

205:                                              ; preds = %204, %108, %89
  %206 = load i8*, i8** %9, align 8
  store i8* %206, i8** %8, align 8
  br label %27

207:                                              ; preds = %45, %27
  %208 = load i8*, i8** %8, align 8
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i32
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %215, label %212

212:                                              ; preds = %207
  %213 = load i64, i64* %11, align 8
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %212, %207
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %217 = load i32, i32* @ECTF_SYNTAX, align 4
  %218 = call i64 @ctf_set_errno(%struct.TYPE_11__* %216, i32 %217)
  store i64 %218, i64* %3, align 8
  br label %238

219:                                              ; preds = %212
  %220 = load i64, i64* %11, align 8
  store i64 %220, i64* %3, align 8
  br label %238

221:                                              ; preds = %200, %183, %84
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 2
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %223, align 8
  %225 = icmp ne %struct.TYPE_11__* %224, null
  br i1 %225, label %226, label %236

226:                                              ; preds = %221
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 2
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %228, align 8
  %230 = load i8*, i8** %5, align 8
  %231 = call i64 @ctf_lookup_by_name(%struct.TYPE_11__* %229, i8* %230)
  store i64 %231, i64* %13, align 8
  %232 = load i64, i64* @CTF_ERR, align 8
  %233 = icmp ne i64 %231, %232
  br i1 %233, label %234, label %236

234:                                              ; preds = %226
  %235 = load i64, i64* %13, align 8
  store i64 %235, i64* %3, align 8
  br label %238

236:                                              ; preds = %226, %221
  %237 = load i64, i64* @CTF_ERR, align 8
  store i64 %237, i64* %3, align 8
  br label %238

238:                                              ; preds = %236, %234, %219, %215, %16
  %239 = load i64, i64* %3, align 8
  ret i64 %239
}

declare dso_local i64 @ctf_set_errno(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i8* @strpbrk(i8*, i8*) #1

declare dso_local i64 @CTF_TYPE_TO_INDEX(i64) #1

declare dso_local i64 @ctf_type_resolve(%struct.TYPE_11__*, i64) #1

declare dso_local i64 @CTF_INDEX_TO_TYPE(i64, i32) #1

declare dso_local i64 @isqualifier(i8*, i64) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local %struct.TYPE_10__* @ctf_hash_lookup(i32, %struct.TYPE_11__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
