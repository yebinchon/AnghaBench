; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_type_promote.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_type_promote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_11__ = type { i64, i32* }
%struct.TYPE_12__ = type { i64, i32 }

@yypcb = common dso_local global %struct.TYPE_13__* null, align 8
@CTF_K_INTEGER = common dso_local global i64 0, align 8
@CTF_K_ENUM = common dso_local global i64 0, align 8
@CTF_ERR = common dso_local global i64 0, align 8
@EDT_CTF = common dso_local global i32 0, align 4
@CTF_INT_SIGNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_11__*, i32**, i64*)* @dt_type_promote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_type_promote(%struct.TYPE_11__* %0, %struct.TYPE_11__* %1, i32** %2, i64* %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = alloca %struct.TYPE_12__, align 8
  %19 = alloca %struct.TYPE_12__, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i64* %3, i64** %8, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %9, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %10, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %11, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %12, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load i64, i64* %10, align 8
  %36 = call i64 @ctf_type_resolve(i32* %34, i64 %35)
  store i64 %36, i64* %13, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = load i64, i64* %13, align 8
  %39 = call i64 @ctf_type_kind(i32* %37, i64 %38)
  store i64 %39, i64* %14, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = load i64, i64* %12, align 8
  %42 = call i64 @ctf_type_resolve(i32* %40, i64 %41)
  store i64 %42, i64* %15, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = load i64, i64* %15, align 8
  %45 = call i64 @ctf_type_kind(i32* %43, i64 %44)
  store i64 %45, i64* %16, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** @yypcb, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  store %struct.TYPE_10__* %48, %struct.TYPE_10__** %17, align 8
  %49 = load i64, i64* %14, align 8
  %50 = load i64, i64* @CTF_K_INTEGER, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %4
  %53 = load i64, i64* %14, align 8
  %54 = load i64, i64* @CTF_K_ENUM, align 8
  %55 = icmp eq i64 %53, %54
  br label %56

56:                                               ; preds = %52, %4
  %57 = phi i1 [ true, %4 ], [ %55, %52 ]
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load i64, i64* %16, align 8
  %61 = load i64, i64* @CTF_K_INTEGER, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %56
  %64 = load i64, i64* %16, align 8
  %65 = load i64, i64* @CTF_K_ENUM, align 8
  %66 = icmp eq i64 %64, %65
  br label %67

67:                                               ; preds = %63, %56
  %68 = phi i1 [ true, %56 ], [ %66, %63 ]
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load i64, i64* %14, align 8
  %72 = load i64, i64* @CTF_K_ENUM, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %76 = call i32* @DT_INT_CTFP(%struct.TYPE_10__* %75)
  store i32* %76, i32** %9, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %78 = call i64 @DT_INT_TYPE(%struct.TYPE_10__* %77)
  store i64 %78, i64* %13, align 8
  store i64 %78, i64* %10, align 8
  br label %79

79:                                               ; preds = %74, %67
  %80 = load i64, i64* %16, align 8
  %81 = load i64, i64* @CTF_K_ENUM, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %85 = call i32* @DT_INT_CTFP(%struct.TYPE_10__* %84)
  store i32* %85, i32** %11, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %87 = call i64 @DT_INT_TYPE(%struct.TYPE_10__* %86)
  store i64 %87, i64* %15, align 8
  store i64 %87, i64* %12, align 8
  br label %88

88:                                               ; preds = %83, %79
  %89 = load i32*, i32** %9, align 8
  %90 = load i64, i64* %13, align 8
  %91 = call i64 @ctf_type_encoding(i32* %89, i64 %90, %struct.TYPE_12__* %18)
  %92 = load i64, i64* @CTF_ERR, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %88
  %95 = load i32*, i32** %9, align 8
  %96 = call i8* @ctf_errno(i32* %95)
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** @yypcb, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  store i8* %96, i8** %100, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** @yypcb, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @EDT_CTF, align 4
  %105 = call i32 @longjmp(i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %94, %88
  %107 = load i32*, i32** %11, align 8
  %108 = load i64, i64* %15, align 8
  %109 = call i64 @ctf_type_encoding(i32* %107, i64 %108, %struct.TYPE_12__* %19)
  %110 = load i64, i64* @CTF_ERR, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %124

112:                                              ; preds = %106
  %113 = load i32*, i32** %11, align 8
  %114 = call i8* @ctf_errno(i32* %113)
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** @yypcb, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  store i8* %114, i8** %118, align 8
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** @yypcb, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @EDT_CTF, align 4
  %123 = call i32 @longjmp(i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %112, %106
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @CTF_INT_SIGNED, align 4
  %130 = and i32 %128, %129
  %131 = icmp eq i32 %130, 0
  %132 = zext i1 %131 to i32
  %133 = sext i32 %132 to i64
  %134 = add nsw i64 %126, %133
  store i64 %134, i64* %20, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @CTF_INT_SIGNED, align 4
  %140 = and i32 %138, %139
  %141 = icmp eq i32 %140, 0
  %142 = zext i1 %141 to i32
  %143 = sext i32 %142 to i64
  %144 = add nsw i64 %136, %143
  store i64 %144, i64* %21, align 8
  %145 = load i64, i64* %20, align 8
  %146 = load i64, i64* %21, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %155

148:                                              ; preds = %124
  %149 = load i64, i64* %13, align 8
  %150 = load i64, i64* %15, align 8
  %151 = sub nsw i64 %149, %150
  %152 = icmp slt i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  br label %166

154:                                              ; preds = %148
  br label %161

155:                                              ; preds = %124
  %156 = load i64, i64* %20, align 8
  %157 = load i64, i64* %21, align 8
  %158 = icmp sgt i64 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  br label %161

160:                                              ; preds = %155
  br label %166

161:                                              ; preds = %159, %154
  %162 = load i32*, i32** %9, align 8
  %163 = load i32**, i32*** %7, align 8
  store i32* %162, i32** %163, align 8
  %164 = load i64, i64* %10, align 8
  %165 = load i64*, i64** %8, align 8
  store i64 %164, i64* %165, align 8
  br label %171

166:                                              ; preds = %160, %153
  %167 = load i32*, i32** %11, align 8
  %168 = load i32**, i32*** %7, align 8
  store i32* %167, i32** %168, align 8
  %169 = load i64, i64* %12, align 8
  %170 = load i64*, i64** %8, align 8
  store i64 %169, i64* %170, align 8
  br label %171

171:                                              ; preds = %166, %161
  ret void
}

declare dso_local i64 @ctf_type_resolve(i32*, i64) #1

declare dso_local i64 @ctf_type_kind(i32*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @DT_INT_CTFP(%struct.TYPE_10__*) #1

declare dso_local i64 @DT_INT_TYPE(%struct.TYPE_10__*) #1

declare dso_local i64 @ctf_type_encoding(i32*, i64, %struct.TYPE_12__*) #1

declare dso_local i8* @ctf_errno(i32*) #1

declare dso_local i32 @longjmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
