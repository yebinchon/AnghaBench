; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_create.c_ctf_add_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_create.c_ctf_add_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64* }
%struct.TYPE_7__ = type { i64, i32 }

@CTF_FUNC_VARARG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CTF_MAX_VLEN = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@ECTF_BADID = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@CTF_ERR = common dso_local global i64 0, align 8
@CTF_K_FUNCTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ctf_add_function(i32* %0, i32 %1, %struct.TYPE_9__* %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* null, i64** %14, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %17 = icmp eq %struct.TYPE_9__* %16, null
  br i1 %17, label %34, label %18

18:                                               ; preds = %4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @CTF_FUNC_VARARG, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %18
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load i64*, i64** %9, align 8
  %33 = icmp eq i64* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %31, %18, %4
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* @EINVAL, align 4
  %37 = call i64 @ctf_set_errno(i32* %35, i32 %36)
  store i64 %37, i64* %5, align 8
  br label %202

38:                                               ; preds = %31, %26
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %12, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @CTF_FUNC_VARARG, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %48, %38
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @CTF_MAX_VLEN, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* @EOVERFLOW, align 4
  %58 = call i64 @ctf_set_errno(i32* %56, i32 %57)
  store i64 %58, i64* %5, align 8
  br label %202

59:                                               ; preds = %51
  %60 = load i32*, i32** %6, align 8
  store i32* %60, i32** %15, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = call i32* @ctf_lookup_by_id(i32** %15, i64 %63)
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %77

66:                                               ; preds = %59
  %67 = load i32*, i32** %6, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = call i32* @ctf_dtd_lookup(i32* %67, i64 %70)
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* @ECTF_BADID, align 4
  %76 = call i64 @ctf_set_errno(i32* %74, i32 %75)
  store i64 %76, i64* %5, align 8
  br label %202

77:                                               ; preds = %66, %59
  store i32 0, i32* %13, align 4
  br label %78

78:                                               ; preds = %107, %77
  %79 = load i32, i32* %13, align 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %110

84:                                               ; preds = %78
  %85 = load i32*, i32** %6, align 8
  store i32* %85, i32** %15, align 8
  %86 = load i64*, i64** %9, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = call i32* @ctf_lookup_by_id(i32** %15, i64 %90)
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %106

93:                                               ; preds = %84
  %94 = load i32*, i32** %6, align 8
  %95 = load i64*, i64** %9, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = call i32* @ctf_dtd_lookup(i32* %94, i64 %99)
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %93
  %103 = load i32*, i32** %6, align 8
  %104 = load i32, i32* @ECTF_BADID, align 4
  %105 = call i64 @ctf_set_errno(i32* %103, i32 %104)
  store i64 %105, i64* %5, align 8
  br label %202

106:                                              ; preds = %93, %84
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %13, align 4
  br label %78

110:                                              ; preds = %78
  %111 = load i32, i32* %12, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %110
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = mul i64 8, %115
  %117 = trunc i64 %116 to i32
  %118 = call i64* @ctf_alloc(i32 %117)
  store i64* %118, i64** %14, align 8
  %119 = icmp eq i64* %118, null
  br i1 %119, label %120, label %124

120:                                              ; preds = %113
  %121 = load i32*, i32** %6, align 8
  %122 = load i32, i32* @EAGAIN, align 4
  %123 = call i64 @ctf_set_errno(i32* %121, i32 %122)
  store i64 %123, i64* %5, align 8
  br label %202

124:                                              ; preds = %113, %110
  %125 = load i32*, i32** %6, align 8
  %126 = load i32, i32* %7, align 4
  %127 = call i64 @ctf_add_generic(i32* %125, i32 %126, i32* null, %struct.TYPE_10__** %10)
  store i64 %127, i64* %11, align 8
  %128 = load i64, i64* @CTF_ERR, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %138

130:                                              ; preds = %124
  %131 = load i64*, i64** %14, align 8
  %132 = load i32, i32* %12, align 4
  %133 = sext i32 %132 to i64
  %134 = mul i64 8, %133
  %135 = trunc i64 %134 to i32
  %136 = call i32 @ctf_free(i64* %131, i32 %135)
  %137 = load i64, i64* @CTF_ERR, align 8
  store i64 %137, i64* %5, align 8
  br label %202

138:                                              ; preds = %124
  %139 = load i32, i32* @CTF_K_FUNCTION, align 4
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* %12, align 4
  %142 = call i32 @CTF_TYPE_INFO(i32 %139, i32 %140, i32 %141)
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 1
  store i32 %142, i32* %145, align 8
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  store i64 %148, i64* %151, align 8
  %152 = load i32*, i32** %6, align 8
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @ctf_ref_inc(i32* %152, i64 %155)
  store i32 0, i32* %13, align 4
  br label %157

157:                                              ; preds = %171, %138
  %158 = load i32, i32* %13, align 4
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = icmp slt i32 %158, %161
  br i1 %162, label %163, label %174

163:                                              ; preds = %157
  %164 = load i32*, i32** %6, align 8
  %165 = load i64*, i64** %9, align 8
  %166 = load i32, i32* %13, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i64, i64* %165, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @ctf_ref_inc(i32* %164, i64 %169)
  br label %171

171:                                              ; preds = %163
  %172 = load i32, i32* %13, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %13, align 4
  br label %157

174:                                              ; preds = %157
  %175 = load i64*, i64** %9, align 8
  %176 = load i64*, i64** %14, align 8
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = sext i32 %179 to i64
  %181 = mul i64 8, %180
  %182 = trunc i64 %181 to i32
  %183 = call i32 @bcopy(i64* %175, i64* %176, i32 %182)
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @CTF_FUNC_VARARG, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %174
  %191 = load i64*, i64** %14, align 8
  %192 = load i32, i32* %12, align 4
  %193 = sub nsw i32 %192, 1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i64, i64* %191, i64 %194
  store i64 0, i64* %195, align 8
  br label %196

196:                                              ; preds = %190, %174
  %197 = load i64*, i64** %14, align 8
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 0
  store i64* %197, i64** %200, align 8
  %201 = load i64, i64* %11, align 8
  store i64 %201, i64* %5, align 8
  br label %202

202:                                              ; preds = %196, %130, %120, %102, %73, %55, %34
  %203 = load i64, i64* %5, align 8
  ret i64 %203
}

declare dso_local i64 @ctf_set_errno(i32*, i32) #1

declare dso_local i32* @ctf_lookup_by_id(i32**, i64) #1

declare dso_local i32* @ctf_dtd_lookup(i32*, i64) #1

declare dso_local i64* @ctf_alloc(i32) #1

declare dso_local i64 @ctf_add_generic(i32*, i32, i32*, %struct.TYPE_10__**) #1

declare dso_local i32 @ctf_free(i64*, i32) #1

declare dso_local i32 @CTF_TYPE_INFO(i32, i32, i32) #1

declare dso_local i32 @ctf_ref_inc(i32*, i64) #1

declare dso_local i32 @bcopy(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
