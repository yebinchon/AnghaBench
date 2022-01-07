; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_client.c_cc_choose.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_client.c_cc_choose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i32*, i32 }
%struct.TYPE_10__ = type { i32, i64, i64, i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"supported: RSA signatures:\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"supported: ECDSA signatures:\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"supported: fixed ECDH (cert signed with RSA)\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"supported: fixed ECDH (cert signed with ECDSA)\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"server key curve: %s (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"server key is not EC\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"using RSA, hash = %d (%s)\0A\00", align 1
@BR_AUTH_RSA = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"using static ECDH\0A\00", align 1
@BR_AUTH_ECDH = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [29 x i8] c"using ECDSA, hash = %d (%s)\0A\00", align 1
@BR_AUTH_ECDSA = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [32 x i8] c"no matching client certificate\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32*, i32, %struct.TYPE_11__*)* @cc_choose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_choose(i32** %0, i32* %1, i32 %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %8, align 8
  %13 = load i32**, i32*** %5, align 8
  %14 = bitcast i32** %13 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %9, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @br_ssl_client_get_server_curve(i32* %15)
  store i32 %16, i32* %10, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %76

21:                                               ; preds = %4
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @br_ssl_client_get_server_hashes(i32* %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, 255
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load i32, i32* @stderr, align 4
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @print_hashes(i32 %30, i32 %31)
  %33 = load i32, i32* @stderr, align 4
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %27, %21
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, 65280
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %35
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* %7, align 4
  %43 = ashr i32 %42, 8
  %44 = load i32, i32* %11, align 4
  %45 = lshr i32 %44, 8
  %46 = call i32 @print_hashes(i32 %43, i32 %45)
  %47 = load i32, i32* @stderr, align 4
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %39, %35
  %50 = load i32, i32* %7, align 4
  %51 = and i32 %50, 65536
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* @stderr, align 4
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %49
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, 131072
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* @stderr, align 4
  %62 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %56
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i32, i32* @stderr, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i8* @ec_curve_name(i32 %68)
  %70 = load i32, i32* %10, align 4
  %71 = call i32 (i32, i8*, ...) @fprintf(i32 %67, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %69, i32 %70)
  br label %75

72:                                               ; preds = %63
  %73 = load i32, i32* @stderr, align 4
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %73, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %66
  br label %76

76:                                               ; preds = %75, %4
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  switch i32 %81, label %209 [
    i32 128, label %82
    i32 129, label %119
  ]

82:                                               ; preds = %76
  %83 = load i32, i32* %7, align 4
  %84 = call i8* @choose_hash(i32 %83)
  %85 = ptrtoint i8* %84 to i32
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = icmp sge i32 %85, 0
  br i1 %88, label %89, label %118

89:                                               ; preds = %82
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %89
  %95 = load i32, i32* @stderr, align 4
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i8* @hash_function_name(i32 %101)
  %103 = call i32 (i32, i8*, ...) @fprintf(i32 %95, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %98, i8* %102)
  br label %104

104:                                              ; preds = %94, %89
  %105 = load i32, i32* @BR_AUTH_RSA, align 4
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 2
  store i32* %110, i32** %112, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  store i64 %115, i64* %117, align 8
  br label %222

118:                                              ; preds = %82
  br label %209

119:                                              ; preds = %76
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %171

124:                                              ; preds = %119
  %125 = load i32, i32* %10, align 4
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 4
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %125, %132
  br i1 %133, label %134, label %171

134:                                              ; preds = %124
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp eq i32 %137, 128
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i32 16, i32 17
  store i32 %140, i32* %12, align 4
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* %12, align 4
  %143 = ashr i32 %141, %142
  %144 = and i32 %143, 1
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %170

146:                                              ; preds = %134
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  %152 = load i32, i32* @stderr, align 4
  %153 = call i32 (i32, i8*, ...) @fprintf(i32 %152, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %154

154:                                              ; preds = %151, %146
  %155 = load i32, i32* @BR_AUTH_ECDH, align 4
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 3
  store i32 %155, i32* %157, align 8
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  store i32 -1, i32* %159, align 8
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 3
  %162 = load i32*, i32** %161, align 8
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 2
  store i32* %162, i32** %164, align 8
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 1
  store i64 %167, i64* %169, align 8
  br label %222

170:                                              ; preds = %134
  br label %171

171:                                              ; preds = %170, %124, %119
  %172 = load i32, i32* %7, align 4
  %173 = ashr i32 %172, 8
  %174 = call i8* @choose_hash(i32 %173)
  %175 = ptrtoint i8* %174 to i32
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 8
  %178 = icmp sge i32 %175, 0
  br i1 %178, label %179, label %208

179:                                              ; preds = %171
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %194

184:                                              ; preds = %179
  %185 = load i32, i32* @stderr, align 4
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i8* @hash_function_name(i32 %191)
  %193 = call i32 (i32, i8*, ...) @fprintf(i32 %185, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i32 %188, i8* %192)
  br label %194

194:                                              ; preds = %184, %179
  %195 = load i32, i32* @BR_AUTH_ECDSA, align 4
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 3
  store i32 %195, i32* %197, align 8
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 3
  %200 = load i32*, i32** %199, align 8
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 2
  store i32* %200, i32** %202, align 8
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 1
  store i64 %205, i64* %207, align 8
  br label %222

208:                                              ; preds = %171
  br label %209

209:                                              ; preds = %76, %208, %118
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %209
  %215 = load i32, i32* @stderr, align 4
  %216 = call i32 (i32, i8*, ...) @fprintf(i32 %215, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  br label %217

217:                                              ; preds = %214, %209
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 2
  store i32* null, i32** %219, align 8
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 1
  store i64 0, i64* %221, align 8
  br label %222

222:                                              ; preds = %217, %194, %154, %104
  ret void
}

declare dso_local i32 @br_ssl_client_get_server_curve(i32*) #1

declare dso_local i32 @br_ssl_client_get_server_hashes(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @print_hashes(i32, i32) #1

declare dso_local i8* @ec_curve_name(i32) #1

declare dso_local i8* @choose_hash(i32) #1

declare dso_local i8* @hash_function_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
