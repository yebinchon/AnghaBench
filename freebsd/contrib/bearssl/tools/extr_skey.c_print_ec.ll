; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_skey.c_print_ec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_skey.c_print_ec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32*, i32*, i32*, i32*, i64, i64 }

@BR_EC_KBUF_PUB_MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"EC_X\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"\0Astatic const br_ec_private_key EC = {\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"\09%d,\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"\09(unsigned char *)EC_X, sizeof EC_X\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"ERROR: cannot re-encode (unsupported curve)\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"ERROR: re-encode failure\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"EC PRIVATE KEY\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"PRIVATE KEY\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*)* @print_ec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_ec(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %13 = load i32, i32* @BR_EC_KBUF_PUB_MAX_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @print_int_text(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27)
  br label %29

29:                                               ; preds = %21, %2
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %29
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @print_int_C(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %40)
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %49

49:                                               ; preds = %34, %29
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %70

54:                                               ; preds = %49
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %70

59:                                               ; preds = %54
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %204

70:                                               ; preds = %64, %59, %54, %49
  %71 = call i32 (...) @br_ec_get_default()
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %73 = call i64 @br_ec_compute_pub(i32 %71, i32* %6, i32* %16, %struct.TYPE_9__* %72)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32, i32* @stderr, align 4
  %77 = call i32 @fprintf(i32 %76, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %204

78:                                               ; preds = %70
  store i32 1, i32* %11, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %140

88:                                               ; preds = %83, %78
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %90 = call i64 @br_encode_ec_raw_der(i8* null, %struct.TYPE_9__* %89, i32* %6)
  store i64 %90, i64* %10, align 8
  %91 = load i64, i64* %10, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i32, i32* @stderr, align 4
  %95 = call i32 @fprintf(i32 %94, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %204

96:                                               ; preds = %88
  %97 = load i64, i64* %10, align 8
  %98 = call i8* @xmalloc(i64 %97)
  store i8* %98, i8** %9, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %101 = call i64 @br_encode_ec_raw_der(i8* %99, %struct.TYPE_9__* %100, i32* %6)
  %102 = load i64, i64* %10, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %96
  %105 = load i32, i32* @stderr, align 4
  %106 = call i32 @fprintf(i32 %105, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %107 = load i8*, i8** %9, align 8
  %108 = call i32 @xfree(i8* %107)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %204

109:                                              ; preds = %96
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 3
  %112 = load i32*, i32** %111, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %123

114:                                              ; preds = %109
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 3
  %117 = load i32*, i32** %116, align 8
  %118 = load i8*, i8** %9, align 8
  %119 = load i64, i64* %10, align 8
  %120 = call i32 @write_to_file(i32* %117, i8* %118, i64 %119)
  %121 = load i32, i32* %11, align 4
  %122 = and i32 %121, %120
  store i32 %122, i32* %11, align 4
  br label %123

123:                                              ; preds = %114, %109
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %137

128:                                              ; preds = %123
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = load i8*, i8** %9, align 8
  %133 = load i64, i64* %10, align 8
  %134 = call i32 @write_to_pem_file(i32* %131, i8* %132, i64 %133, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %135 = load i32, i32* %11, align 4
  %136 = and i32 %135, %134
  store i32 %136, i32* %11, align 4
  br label %137

137:                                              ; preds = %128, %123
  %138 = load i8*, i8** %9, align 8
  %139 = call i32 @xfree(i8* %138)
  br label %140

140:                                              ; preds = %137, %83
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %150, label %145

145:                                              ; preds = %140
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %202

150:                                              ; preds = %145, %140
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %152 = call i64 @br_encode_ec_pkcs8_der(i8* null, %struct.TYPE_9__* %151, i32* %6)
  store i64 %152, i64* %10, align 8
  %153 = load i64, i64* %10, align 8
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = load i32, i32* @stderr, align 4
  %157 = call i32 @fprintf(i32 %156, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %204

158:                                              ; preds = %150
  %159 = load i64, i64* %10, align 8
  %160 = call i8* @xmalloc(i64 %159)
  store i8* %160, i8** %9, align 8
  %161 = load i8*, i8** %9, align 8
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %163 = call i64 @br_encode_ec_pkcs8_der(i8* %161, %struct.TYPE_9__* %162, i32* %6)
  %164 = load i64, i64* %10, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %171

166:                                              ; preds = %158
  %167 = load i32, i32* @stderr, align 4
  %168 = call i32 @fprintf(i32 %167, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %169 = load i8*, i8** %9, align 8
  %170 = call i32 @xfree(i8* %169)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %204

171:                                              ; preds = %158
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %185

176:                                              ; preds = %171
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = load i8*, i8** %9, align 8
  %181 = load i64, i64* %10, align 8
  %182 = call i32 @write_to_file(i32* %179, i8* %180, i64 %181)
  %183 = load i32, i32* %11, align 4
  %184 = and i32 %183, %182
  store i32 %184, i32* %11, align 4
  br label %185

185:                                              ; preds = %176, %171
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = icmp ne i32* %188, null
  br i1 %189, label %190, label %199

190:                                              ; preds = %185
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = load i8*, i8** %9, align 8
  %195 = load i64, i64* %10, align 8
  %196 = call i32 @write_to_pem_file(i32* %193, i8* %194, i64 %195, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %197 = load i32, i32* %11, align 4
  %198 = and i32 %197, %196
  store i32 %198, i32* %11, align 4
  br label %199

199:                                              ; preds = %190, %185
  %200 = load i8*, i8** %9, align 8
  %201 = call i32 @xfree(i8* %200)
  br label %202

202:                                              ; preds = %199, %145
  %203 = load i32, i32* %11, align 4
  store i32 %203, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %204

204:                                              ; preds = %202, %166, %155, %104, %93, %75, %69
  %205 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %205)
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @print_int_text(i8*, i32, i32) #2

declare dso_local i32 @print_int_C(i8*, i32, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i64 @br_ec_compute_pub(i32, i32*, i32*, %struct.TYPE_9__*) #2

declare dso_local i32 @br_ec_get_default(...) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i64 @br_encode_ec_raw_der(i8*, %struct.TYPE_9__*, i32*) #2

declare dso_local i8* @xmalloc(i64) #2

declare dso_local i32 @xfree(i8*) #2

declare dso_local i32 @write_to_file(i32*, i8*, i64) #2

declare dso_local i32 @write_to_pem_file(i32*, i8*, i64, i8*) #2

declare dso_local i64 @br_encode_ec_pkcs8_der(i8*, %struct.TYPE_9__*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
