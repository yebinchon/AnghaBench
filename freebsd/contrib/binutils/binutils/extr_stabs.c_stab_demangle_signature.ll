; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_stab_demangle_signature.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_stab_demangle_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_demangle_info = type { i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.stab_demangle_info*, i8**)* @stab_demangle_signature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stab_demangle_signature(%struct.stab_demangle_info* %0, i8** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.stab_demangle_info*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.stab_demangle_info* %0, %struct.stab_demangle_info** %4, align 8
  store i8** %1, i8*** %5, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %6, align 8
  %12 = load i64, i64* @FALSE, align 8
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* @FALSE, align 8
  store i64 %13, i64* %8, align 8
  store i8* null, i8** %9, align 8
  br label %14

14:                                               ; preds = %171, %2
  %15 = load i8**, i8*** %5, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %172

20:                                               ; preds = %14
  %21 = load i8**, i8*** %5, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  switch i32 %24, label %142 [
    i32 81, label %25
    i32 83, label %48
    i32 67, label %58
    i32 48, label %68
    i32 49, label %68
    i32 50, label %68
    i32 51, label %68
    i32 52, label %68
    i32 53, label %68
    i32 54, label %68
    i32 55, label %68
    i32 56, label %68
    i32 57, label %68
    i32 70, label %95
    i32 116, label %111
    i32 95, label %138
  ]

25:                                               ; preds = %20
  %26 = load i8**, i8*** %5, align 8
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %9, align 8
  %28 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %4, align 8
  %29 = load i8**, i8*** %5, align 8
  %30 = call i32 @stab_demangle_qualified(%struct.stab_demangle_info* %28, i8** %29, i32* null)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %25
  %33 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %4, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load i8**, i8*** %5, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = ptrtoint i8* %36 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  %41 = trunc i64 %40 to i32
  %42 = call i32 @stab_demangle_remember_type(%struct.stab_demangle_info* %33, i8* %34, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %32, %25
  %45 = load i64, i64* @FALSE, align 8
  store i64 %45, i64* %3, align 8
  br label %189

46:                                               ; preds = %32
  %47 = load i64, i64* @TRUE, align 8
  store i64 %47, i64* %7, align 8
  store i8* null, i8** %9, align 8
  br label %155

48:                                               ; preds = %20
  %49 = load i8*, i8** %9, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i8**, i8*** %5, align 8
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %9, align 8
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i8**, i8*** %5, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %55, align 8
  br label %155

58:                                               ; preds = %20
  %59 = load i8*, i8** %9, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i8**, i8*** %5, align 8
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %9, align 8
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i8**, i8*** %5, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %65, align 8
  br label %155

68:                                               ; preds = %20, %20, %20, %20, %20, %20, %20, %20, %20, %20
  %69 = load i8*, i8** %9, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i8**, i8*** %5, align 8
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** %9, align 8
  br label %74

74:                                               ; preds = %71, %68
  %75 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %4, align 8
  %76 = load i8**, i8*** %5, align 8
  %77 = call i32 @stab_demangle_class(%struct.stab_demangle_info* %75, i8** %76, i8** null)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %74
  %80 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %4, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = load i8**, i8*** %5, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = ptrtoint i8* %83 to i64
  %86 = ptrtoint i8* %84 to i64
  %87 = sub i64 %85, %86
  %88 = trunc i64 %87 to i32
  %89 = call i32 @stab_demangle_remember_type(%struct.stab_demangle_info* %80, i8* %81, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %79, %74
  %92 = load i64, i64* @FALSE, align 8
  store i64 %92, i64* %3, align 8
  br label %189

93:                                               ; preds = %79
  %94 = load i64, i64* @TRUE, align 8
  store i64 %94, i64* %7, align 8
  store i8* null, i8** %9, align 8
  br label %155

95:                                               ; preds = %20
  store i8* null, i8** %9, align 8
  %96 = load i64, i64* @TRUE, align 8
  store i64 %96, i64* %8, align 8
  %97 = load i8**, i8*** %5, align 8
  %98 = load i8*, i8** %97, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %97, align 8
  %100 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %4, align 8
  %101 = load i8**, i8*** %5, align 8
  %102 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %4, align 8
  %103 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %102, i32 0, i32 1
  %104 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %4, align 8
  %105 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %104, i32 0, i32 0
  %106 = call i32 @stab_demangle_args(%struct.stab_demangle_info* %100, i8** %101, i32* %103, i32* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %95
  %109 = load i64, i64* @FALSE, align 8
  store i64 %109, i64* %3, align 8
  br label %189

110:                                              ; preds = %95
  br label %155

111:                                              ; preds = %20
  %112 = load i8*, i8** %9, align 8
  %113 = icmp eq i8* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i8**, i8*** %5, align 8
  %116 = load i8*, i8** %115, align 8
  store i8* %116, i8** %9, align 8
  br label %117

117:                                              ; preds = %114, %111
  %118 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %4, align 8
  %119 = load i8**, i8*** %5, align 8
  %120 = call i32 @stab_demangle_template(%struct.stab_demangle_info* %118, i8** %119, i8** null)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %117
  %123 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %4, align 8
  %124 = load i8*, i8** %9, align 8
  %125 = load i8**, i8*** %5, align 8
  %126 = load i8*, i8** %125, align 8
  %127 = load i8*, i8** %9, align 8
  %128 = ptrtoint i8* %126 to i64
  %129 = ptrtoint i8* %127 to i64
  %130 = sub i64 %128, %129
  %131 = trunc i64 %130 to i32
  %132 = call i32 @stab_demangle_remember_type(%struct.stab_demangle_info* %123, i8* %124, i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %122, %117
  %135 = load i64, i64* @FALSE, align 8
  store i64 %135, i64* %3, align 8
  br label %189

136:                                              ; preds = %122
  store i8* null, i8** %9, align 8
  %137 = load i64, i64* @TRUE, align 8
  store i64 %137, i64* %7, align 8
  br label %155

138:                                              ; preds = %20
  %139 = load i8*, i8** %6, align 8
  %140 = call i32 @stab_bad_demangle(i8* %139)
  %141 = load i64, i64* @FALSE, align 8
  store i64 %141, i64* %3, align 8
  br label %189

142:                                              ; preds = %20
  %143 = load i64, i64* @TRUE, align 8
  store i64 %143, i64* %8, align 8
  %144 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %4, align 8
  %145 = load i8**, i8*** %5, align 8
  %146 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %4, align 8
  %147 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %146, i32 0, i32 1
  %148 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %4, align 8
  %149 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %148, i32 0, i32 0
  %150 = call i32 @stab_demangle_args(%struct.stab_demangle_info* %144, i8** %145, i32* %147, i32* %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %142
  %153 = load i64, i64* @FALSE, align 8
  store i64 %153, i64* %3, align 8
  br label %189

154:                                              ; preds = %142
  br label %155

155:                                              ; preds = %154, %136, %110, %93, %64, %54, %46
  %156 = load i64, i64* %7, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %171

158:                                              ; preds = %155
  %159 = load i64, i64* @TRUE, align 8
  store i64 %159, i64* %8, align 8
  %160 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %4, align 8
  %161 = load i8**, i8*** %5, align 8
  %162 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %4, align 8
  %163 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %162, i32 0, i32 1
  %164 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %4, align 8
  %165 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %164, i32 0, i32 0
  %166 = call i32 @stab_demangle_args(%struct.stab_demangle_info* %160, i8** %161, i32* %163, i32* %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %158
  %169 = load i64, i64* @FALSE, align 8
  store i64 %169, i64* %3, align 8
  br label %189

170:                                              ; preds = %158
  br label %171

171:                                              ; preds = %170, %155
  br label %14

172:                                              ; preds = %14
  %173 = load i64, i64* %8, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %187, label %175

175:                                              ; preds = %172
  %176 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %4, align 8
  %177 = load i8**, i8*** %5, align 8
  %178 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %4, align 8
  %179 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %178, i32 0, i32 1
  %180 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %4, align 8
  %181 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %180, i32 0, i32 0
  %182 = call i32 @stab_demangle_args(%struct.stab_demangle_info* %176, i8** %177, i32* %179, i32* %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %186, label %184

184:                                              ; preds = %175
  %185 = load i64, i64* @FALSE, align 8
  store i64 %185, i64* %3, align 8
  br label %189

186:                                              ; preds = %175
  br label %187

187:                                              ; preds = %186, %172
  %188 = load i64, i64* @TRUE, align 8
  store i64 %188, i64* %3, align 8
  br label %189

189:                                              ; preds = %187, %184, %168, %152, %138, %134, %108, %91, %44
  %190 = load i64, i64* %3, align 8
  ret i64 %190
}

declare dso_local i32 @stab_demangle_qualified(%struct.stab_demangle_info*, i8**, i32*) #1

declare dso_local i32 @stab_demangle_remember_type(%struct.stab_demangle_info*, i8*, i32) #1

declare dso_local i32 @stab_demangle_class(%struct.stab_demangle_info*, i8**, i8**) #1

declare dso_local i32 @stab_demangle_args(%struct.stab_demangle_info*, i8**, i32*, i32*) #1

declare dso_local i32 @stab_demangle_template(%struct.stab_demangle_info*, i8**, i8**) #1

declare dso_local i32 @stab_bad_demangle(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
