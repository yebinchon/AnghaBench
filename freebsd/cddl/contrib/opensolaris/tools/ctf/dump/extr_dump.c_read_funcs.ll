; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/dump/extr_dump.c_read_funcs.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/dump/extr_dump.c_read_funcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32*, i64 }

@flags = common dso_local global i64 0, align 8
@F_STATS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"- Functions \00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"cth_funcoff is not aligned properly\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"file is truncated or cth_funcoff is corrupt\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"file is truncated or cth_typeoff is corrupt\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"file is corrupt -- cth_funcoff > cth_typeoff\0A\00", align 1
@STT_FUNC = common dso_local global i32 0, align 4
@CTF_K_UNKNOWN = common dso_local global i64 0, align 8
@CTF_K_FUNCTION = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"  [%lu] unexpected kind -- %u\0A\00", align 1
@E_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"  [%lu] vlen %u extends past section boundary\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"  [%lu] FUNC \00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"(%s) \00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"returns: %u args: (\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c", %u\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@stats = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@E_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_8__*)* @read_funcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_funcs(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %19, %23
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = bitcast i8* %26 to i64*
  store i64* %27, i64** %7, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %30, %34
  %36 = inttoptr i64 %35 to i8*
  store i8* %36, i8** %6, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = bitcast i8* %37 to i64*
  store i64* %38, i64** %8, align 8
  %39 = load i64, i64* @flags, align 8
  %40 = load i64, i64* @F_STATS, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %2
  %43 = call i32 @print_line(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %2
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 1
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = call i32 @WARN(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %44
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp sge i32 %55, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = call i32 @WARN(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %52
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp sge i32 %65, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = call i32 @WARN(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %62
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp sgt i32 %75, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %72
  %81 = call i32 @WARN(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %72
  store i32 -1, i32* %10, align 4
  store i64 0, i64* %9, align 8
  br label %83

83:                                               ; preds = %189, %82
  %84 = load i64*, i64** %7, align 8
  %85 = load i64*, i64** %8, align 8
  %86 = icmp ult i64* %84, %85
  br i1 %86, label %87, label %192

87:                                               ; preds = %83
  %88 = load i64*, i64** %7, align 8
  %89 = getelementptr inbounds i64, i64* %88, i32 1
  store i64* %89, i64** %7, align 8
  %90 = load i64, i64* %88, align 8
  store i64 %90, i64* %11, align 8
  %91 = load i64, i64* %11, align 8
  %92 = call i64 @CTF_INFO_KIND(i64 %91)
  store i64 %92, i64* %12, align 8
  %93 = load i64, i64* %11, align 8
  %94 = call i64 @CTF_INFO_VLEN(i64 %93)
  store i64 %94, i64* %13, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = icmp eq i32* %97, null
  br i1 %98, label %105, label %99

99:                                               ; preds = %87
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @STT_FUNC, align 4
  %103 = call i32 @next_sym(%struct.TYPE_8__* %100, i32 %101, i32 %102, i8** %16)
  store i32 %103, i32* %15, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %99, %87
  store i8* null, i8** %16, align 8
  br label %108

106:                                              ; preds = %99
  %107 = load i32, i32* %15, align 4
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %106, %105
  %109 = load i64, i64* %12, align 8
  %110 = load i64, i64* @CTF_K_UNKNOWN, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = load i64, i64* %13, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  br label %189

116:                                              ; preds = %112, %108
  %117 = load i64, i64* %12, align 8
  %118 = load i64, i64* @CTF_K_FUNCTION, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %116
  %121 = load i64, i64* %9, align 8
  %122 = load i64, i64* %12, align 8
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i64 %121, i64 %122)
  %124 = load i32, i32* @E_ERROR, align 4
  store i32 %124, i32* %3, align 4
  br label %194

125:                                              ; preds = %116
  %126 = load i64*, i64** %7, align 8
  %127 = load i64, i64* %13, align 8
  %128 = getelementptr inbounds i64, i64* %126, i64 %127
  %129 = load i64*, i64** %8, align 8
  %130 = icmp ugt i64* %128, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %125
  %132 = load i64, i64* %9, align 8
  %133 = load i64, i64* %13, align 8
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i64 %132, i64 %133)
  %135 = load i32, i32* @E_ERROR, align 4
  store i32 %135, i32* %3, align 4
  br label %194

136:                                              ; preds = %125
  %137 = load i64, i64* @flags, align 8
  %138 = load i64, i64* @F_STATS, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %175

140:                                              ; preds = %136
  %141 = load i64, i64* %9, align 8
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i64 %141)
  %143 = load i8*, i8** %16, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = load i8*, i8** %16, align 8
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %146)
  br label %148

148:                                              ; preds = %145, %140
  %149 = load i64*, i64** %7, align 8
  %150 = getelementptr inbounds i64, i64* %149, i32 1
  store i64* %150, i64** %7, align 8
  %151 = load i64, i64* %149, align 8
  %152 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i64 %151)
  %153 = load i64, i64* %13, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %173

155:                                              ; preds = %148
  %156 = load i64*, i64** %7, align 8
  %157 = getelementptr inbounds i64, i64* %156, i32 1
  store i64* %157, i64** %7, align 8
  %158 = load i64, i64* %156, align 8
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i64 %158)
  store i64 1, i64* %14, align 8
  br label %160

160:                                              ; preds = %169, %155
  %161 = load i64, i64* %14, align 8
  %162 = load i64, i64* %13, align 8
  %163 = icmp slt i64 %161, %162
  br i1 %163, label %164, label %172

164:                                              ; preds = %160
  %165 = load i64*, i64** %7, align 8
  %166 = getelementptr inbounds i64, i64* %165, i32 1
  store i64* %166, i64** %7, align 8
  %167 = load i64, i64* %165, align 8
  %168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 %167)
  br label %169

169:                                              ; preds = %164
  %170 = load i64, i64* %14, align 8
  %171 = add nsw i64 %170, 1
  store i64 %171, i64* %14, align 8
  br label %160

172:                                              ; preds = %160
  br label %173

173:                                              ; preds = %172, %148
  %174 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  br label %180

175:                                              ; preds = %136
  %176 = load i64, i64* %13, align 8
  %177 = add nsw i64 %176, 1
  %178 = load i64*, i64** %7, align 8
  %179 = getelementptr inbounds i64, i64* %178, i64 %177
  store i64* %179, i64** %7, align 8
  br label %180

180:                                              ; preds = %175, %173
  %181 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @stats, i32 0, i32 2), align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @stats, i32 0, i32 2), align 4
  %183 = load i64, i64* %13, align 8
  %184 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @stats, i32 0, i32 0), align 8
  %185 = add nsw i64 %184, %183
  store i64 %185, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @stats, i32 0, i32 0), align 8
  %186 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @stats, i32 0, i32 1), align 8
  %187 = load i64, i64* %13, align 8
  %188 = call i32 @MAX(i32 %186, i64 %187)
  store i32 %188, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @stats, i32 0, i32 1), align 8
  br label %189

189:                                              ; preds = %180, %115
  %190 = load i64, i64* %9, align 8
  %191 = add nsw i64 %190, 1
  store i64 %191, i64* %9, align 8
  br label %83

192:                                              ; preds = %83
  %193 = load i32, i32* @E_SUCCESS, align 4
  store i32 %193, i32* %3, align 4
  br label %194

194:                                              ; preds = %192, %131, %120
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local i32 @print_line(i8*) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i64 @CTF_INFO_KIND(i64) #1

declare dso_local i64 @CTF_INFO_VLEN(i64) #1

declare dso_local i32 @next_sym(%struct.TYPE_8__*, i32, i32, i8**) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @MAX(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
