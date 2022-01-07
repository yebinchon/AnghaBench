; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_dir.c_Dir_MTime.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_dir.c_Dir_MTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i8*, i8*, i32, i8*, i32, i32 }
%struct.stat = type { i32 }

@OP_ARCHV = common dso_local global i32 0, align 4
@OP_PHONY = common dso_local global i32 0, align 4
@OP_NOPATH = common dso_local global i32 0, align 4
@FROM_DEPEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c".STALE\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"%s: %s, %d: ignoring stale %s for %s, found %s\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@makeDependfile = common dso_local global i8* null, align 8
@DIR = common dso_local global i32 0, align 4
@debug_file = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Found '%s' as '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"(not found)\00", align 1
@mtimes = common dso_local global i32 0, align 4
@CST_UPDATE = common dso_local global i32 0, align 4
@OP_MEMBER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Dir_MTime(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stat, align 4
  %8 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @OP_ARCHV, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = call i32 @Arch_MTime(%struct.TYPE_6__* %16)
  store i32 %17, i32* %3, align 4
  br label %193

18:                                               ; preds = %2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @OP_PHONY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  store i32 0, i32* %27, align 4
  store i32 0, i32* %3, align 4
  br label %193

28:                                               ; preds = %18
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %126

33:                                               ; preds = %28
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @OP_NOPATH, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i8* null, i8** %6, align 8
  br label %125

41:                                               ; preds = %33
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = call i32 @Suff_FindPath(%struct.TYPE_6__* %45)
  %47 = call i8* @Dir_FindFile(i8* %44, i32 %46)
  store i8* %47, i8** %6, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %107

50:                                               ; preds = %41
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @FROM_DEPEND, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %107

57:                                               ; preds = %50
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @Lst_IsEmpty(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %107, label %63

63:                                               ; preds = %57
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 3
  %66 = load i8*, i8** %65, align 8
  %67 = call i8* @strrchr(i8* %66, i8 signext 47)
  store i8* %67, i8** %8, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %106

70:                                               ; preds = %63
  %71 = load i8*, i8** %8, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %8, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %75 = call i32 @Suff_FindPath(%struct.TYPE_6__* %74)
  %76 = call i8* @Dir_FindFile(i8* %73, i32 %75)
  store i8* %76, i8** %6, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %105

79:                                               ; preds = %70
  %80 = load i8*, i8** %6, align 8
  %81 = call i8* @bmake_strdup(i8* %80)
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  store i8* %81, i8** %83, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 5
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @Job_RunTarget(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %104, label %89

89:                                               ; preds = %79
  %90 = load i32, i32* @stdout, align 4
  %91 = load i8*, i8** @progname, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 5
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 8
  %98 = load i8*, i8** @makeDependfile, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 3
  %101 = load i8*, i8** %100, align 8
  %102 = load i8*, i8** %6, align 8
  %103 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %90, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %91, i8* %94, i32 %97, i8* %98, i8* %101, i8* %102)
  br label %104

104:                                              ; preds = %89, %79
  br label %105

105:                                              ; preds = %104, %70
  br label %106

106:                                              ; preds = %105, %63
  br label %107

107:                                              ; preds = %106, %57, %50, %41
  %108 = load i32, i32* @DIR, align 4
  %109 = call i64 @DEBUG(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %107
  %112 = load i32, i32* @debug_file, align 4
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 3
  %115 = load i8*, i8** %114, align 8
  %116 = load i8*, i8** %6, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = load i8*, i8** %6, align 8
  br label %121

120:                                              ; preds = %111
  br label %121

121:                                              ; preds = %120, %118
  %122 = phi i8* [ %119, %118 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), %120 ]
  %123 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %112, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %115, i8* %122)
  br label %124

124:                                              ; preds = %121, %107
  br label %125

125:                                              ; preds = %124, %40
  br label %130

126:                                              ; preds = %28
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 2
  %129 = load i8*, i8** %128, align 8
  store i8* %129, i8** %6, align 8
  br label %130

130:                                              ; preds = %126, %125
  br label %131

131:                                              ; preds = %130
  br label %132

132:                                              ; preds = %131
  %133 = load i8*, i8** %6, align 8
  %134 = icmp eq i8* %133, null
  br i1 %134, label %135, label %140

135:                                              ; preds = %132
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 3
  %138 = load i8*, i8** %137, align 8
  %139 = call i8* @bmake_strdup(i8* %138)
  store i8* %139, i8** %6, align 8
  br label %140

140:                                              ; preds = %135, %132
  %141 = load i8*, i8** %6, align 8
  %142 = load i64, i64* %5, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  %145 = load i32, i32* @CST_UPDATE, align 4
  br label %147

146:                                              ; preds = %140
  br label %147

147:                                              ; preds = %146, %144
  %148 = phi i32 [ %145, %144 ], [ 0, %146 ]
  %149 = call i64 @cached_stats(i32* @mtimes, i8* %141, %struct.stat* %7, i32 %148)
  %150 = icmp slt i64 %149, 0
  br i1 %150, label %151, label %173

151:                                              ; preds = %147
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @OP_MEMBER, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %170

158:                                              ; preds = %151
  %159 = load i8*, i8** %6, align 8
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 2
  %162 = load i8*, i8** %161, align 8
  %163 = icmp ne i8* %159, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %158
  %165 = load i8*, i8** %6, align 8
  %166 = call i32 @free(i8* %165)
  br label %167

167:                                              ; preds = %164, %158
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %169 = call i32 @Arch_MemMTime(%struct.TYPE_6__* %168)
  store i32 %169, i32* %3, align 4
  br label %193

170:                                              ; preds = %151
  %171 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  store i32 0, i32* %171, align 4
  br label %172

172:                                              ; preds = %170
  br label %173

173:                                              ; preds = %172, %147
  %174 = load i8*, i8** %6, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %176, label %185

176:                                              ; preds = %173
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 2
  %179 = load i8*, i8** %178, align 8
  %180 = icmp eq i8* %179, null
  br i1 %180, label %181, label %185

181:                                              ; preds = %176
  %182 = load i8*, i8** %6, align 8
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 2
  store i8* %182, i8** %184, align 8
  br label %185

185:                                              ; preds = %181, %176, %173
  %186 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 1
  store i32 %187, i32* %189, align 4
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  store i32 %192, i32* %3, align 4
  br label %193

193:                                              ; preds = %185, %167, %25, %15
  %194 = load i32, i32* %3, align 4
  ret i32 %194
}

declare dso_local i32 @Arch_MTime(%struct.TYPE_6__*) #1

declare dso_local i8* @Dir_FindFile(i8*, i32) #1

declare dso_local i32 @Suff_FindPath(%struct.TYPE_6__*) #1

declare dso_local i32 @Lst_IsEmpty(i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @bmake_strdup(i8*) #1

declare dso_local i32 @Job_RunTarget(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, ...) #1

declare dso_local i64 @DEBUG(i32) #1

declare dso_local i64 @cached_stats(i32*, i8*, %struct.stat*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @Arch_MemMTime(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
