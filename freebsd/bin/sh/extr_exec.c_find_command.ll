; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_exec.c_find_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_exec.c_find_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdentry = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tblentry = type { i64, i32, %struct.TYPE_2__ }
%struct.stat = type { i32, i64, i64 }

@CMDNORMAL = common dso_local global i8* null, align 8
@CMDFUNCTION = common dso_local global i64 0, align 8
@DO_NOFUNC = common dso_local global i32 0, align 4
@INTOFF = common dso_local global i32 0, align 4
@CMDBUILTIN = common dso_local global i64 0, align 8
@INTON = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"func\00", align 1
@errno = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"%s not defined in %s\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"searchexec \22%s\22 returns \22%s\22\0A\00", align 1
@DO_ERR = common dso_local global i32 0, align 4
@out2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"%s: not found\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@CMDUNKNOWN = common dso_local global i64 0, align 8
@cmdtable_cd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @find_command(i8* %0, %struct.cmdentry* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cmdentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.tblentry*, align 8
  %10 = alloca %struct.tblentry, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.stat, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.cmdentry* %1, %struct.cmdentry** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i32* @strchr(i8* %19, i8 signext 47)
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %4
  %23 = load i8*, i8** @CMDNORMAL, align 8
  %24 = ptrtoint i8* %23 to i64
  %25 = load %struct.cmdentry*, %struct.cmdentry** %6, align 8
  %26 = getelementptr inbounds %struct.cmdentry, %struct.cmdentry* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.cmdentry*, %struct.cmdentry** %6, align 8
  %28 = getelementptr inbounds %struct.cmdentry, %struct.cmdentry* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  %30 = load %struct.cmdentry*, %struct.cmdentry** %6, align 8
  %31 = getelementptr inbounds %struct.cmdentry, %struct.cmdentry* %30, i32 0, i32 1
  store i32 0, i32* %31, align 8
  br label %229

32:                                               ; preds = %4
  store i32 0, i32* %18, align 4
  %33 = load i8*, i8** %5, align 8
  %34 = call %struct.tblentry* @cmdlookup(i8* %33, i32 0)
  store %struct.tblentry* %34, %struct.tblentry** %9, align 8
  %35 = icmp ne %struct.tblentry* %34, null
  br i1 %35, label %36, label %50

36:                                               ; preds = %32
  %37 = load %struct.tblentry*, %struct.tblentry** %9, align 8
  %38 = getelementptr inbounds %struct.tblentry, %struct.tblentry* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CMDFUNCTION, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @DO_NOFUNC, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store %struct.tblentry* null, %struct.tblentry** %9, align 8
  br label %49

48:                                               ; preds = %42, %36
  br label %208

49:                                               ; preds = %47
  br label %50

50:                                               ; preds = %49, %32
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @find_builtin(i8* %51, i32* %17)
  store i32 %52, i32* %16, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %76

54:                                               ; preds = %50
  %55 = load i32, i32* @INTOFF, align 4
  %56 = load i8*, i8** %5, align 8
  %57 = call %struct.tblentry* @cmdlookup(i8* %56, i32 1)
  store %struct.tblentry* %57, %struct.tblentry** %9, align 8
  %58 = load %struct.tblentry*, %struct.tblentry** %9, align 8
  %59 = getelementptr inbounds %struct.tblentry, %struct.tblentry* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @CMDFUNCTION, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  store %struct.tblentry* %10, %struct.tblentry** %9, align 8
  br label %64

64:                                               ; preds = %63, %54
  %65 = load i64, i64* @CMDBUILTIN, align 8
  %66 = load %struct.tblentry*, %struct.tblentry** %9, align 8
  %67 = getelementptr inbounds %struct.tblentry, %struct.tblentry* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load i32, i32* %16, align 4
  %69 = load %struct.tblentry*, %struct.tblentry** %9, align 8
  %70 = getelementptr inbounds %struct.tblentry, %struct.tblentry* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* %17, align 4
  %73 = load %struct.tblentry*, %struct.tblentry** %9, align 8
  %74 = getelementptr inbounds %struct.tblentry, %struct.tblentry* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @INTON, align 4
  br label %208

76:                                               ; preds = %50
  %77 = load i32, i32* @ENOENT, align 4
  store i32 %77, i32* %15, align 4
  store i32 -1, i32* %11, align 4
  br label %78

78:                                               ; preds = %172, %76
  %79 = load i8*, i8** %5, align 8
  %80 = call i8* @padvance(i8** %8, i8** %12, i8* %79)
  store i8* %80, i8** %13, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %175

82:                                               ; preds = %78
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  %85 = load i8*, i8** %12, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  %88 = load i8*, i8** %12, align 8
  %89 = call i64 @strncmp(i8* %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  br label %93

92:                                               ; preds = %87
  br label %172

93:                                               ; preds = %91
  br label %94

94:                                               ; preds = %93, %82
  %95 = load i8*, i8** %13, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 0
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 47
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  store i32 1, i32* %18, align 4
  br label %101

101:                                              ; preds = %100, %94
  %102 = load i8*, i8** %13, align 8
  %103 = call i64 @stat(i8* %102, %struct.stat* %14)
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %101
  %106 = load i32, i32* @errno, align 4
  %107 = load i32, i32* @ENOENT, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %105
  %110 = load i32, i32* @errno, align 4
  %111 = load i32, i32* @ENOTDIR, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = load i32, i32* @errno, align 4
  store i32 %114, i32* %15, align 4
  br label %115

115:                                              ; preds = %113, %109, %105
  br label %172

116:                                              ; preds = %101
  %117 = load i32, i32* @EACCES, align 4
  store i32 %117, i32* %15, align 4
  %118 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @S_ISREG(i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %116
  br label %172

123:                                              ; preds = %116
  %124 = load i8*, i8** %12, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %145

126:                                              ; preds = %123
  %127 = load i8*, i8** %13, align 8
  %128 = call i32 @readcmdfile(i8* %127)
  %129 = load i8*, i8** %5, align 8
  %130 = call %struct.tblentry* @cmdlookup(i8* %129, i32 0)
  store %struct.tblentry* %130, %struct.tblentry** %9, align 8
  %131 = icmp eq %struct.tblentry* %130, null
  br i1 %131, label %138, label %132

132:                                              ; preds = %126
  %133 = load %struct.tblentry*, %struct.tblentry** %9, align 8
  %134 = getelementptr inbounds %struct.tblentry, %struct.tblentry* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @CMDFUNCTION, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %132, %126
  %139 = load i8*, i8** %5, align 8
  %140 = load i8*, i8** %13, align 8
  %141 = call i32 @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %139, i8* %140)
  br label %142

142:                                              ; preds = %138, %132
  %143 = load i8*, i8** %13, align 8
  %144 = call i32 @stunalloc(i8* %143)
  br label %208

145:                                              ; preds = %123
  %146 = load i8*, i8** %5, align 8
  %147 = load i8*, i8** %13, align 8
  %148 = call i32 @TRACE(i8* %147)
  %149 = load i32, i32* @INTOFF, align 4
  %150 = load i8*, i8** %13, align 8
  %151 = call i32 @stunalloc(i8* %150)
  %152 = load i8*, i8** %5, align 8
  %153 = call %struct.tblentry* @cmdlookup(i8* %152, i32 1)
  store %struct.tblentry* %153, %struct.tblentry** %9, align 8
  %154 = load %struct.tblentry*, %struct.tblentry** %9, align 8
  %155 = getelementptr inbounds %struct.tblentry, %struct.tblentry* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @CMDFUNCTION, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %145
  store %struct.tblentry* %10, %struct.tblentry** %9, align 8
  br label %160

160:                                              ; preds = %159, %145
  %161 = load i8*, i8** @CMDNORMAL, align 8
  %162 = ptrtoint i8* %161 to i64
  %163 = load %struct.tblentry*, %struct.tblentry** %9, align 8
  %164 = getelementptr inbounds %struct.tblentry, %struct.tblentry* %163, i32 0, i32 0
  store i64 %162, i64* %164, align 8
  %165 = load i32, i32* %11, align 4
  %166 = load %struct.tblentry*, %struct.tblentry** %9, align 8
  %167 = getelementptr inbounds %struct.tblentry, %struct.tblentry* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  store i32 %165, i32* %168, align 4
  %169 = load %struct.tblentry*, %struct.tblentry** %9, align 8
  %170 = getelementptr inbounds %struct.tblentry, %struct.tblentry* %169, i32 0, i32 1
  store i32 0, i32* %170, align 8
  %171 = load i32, i32* @INTON, align 4
  br label %208

172:                                              ; preds = %122, %115, %92
  %173 = load i8*, i8** %13, align 8
  %174 = call i32 @stunalloc(i8* %173)
  br label %78

175:                                              ; preds = %78
  %176 = load i32, i32* %7, align 4
  %177 = load i32, i32* @DO_ERR, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %199

180:                                              ; preds = %175
  %181 = load i32, i32* %15, align 4
  %182 = load i32, i32* @ENOENT, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %188, label %184

184:                                              ; preds = %180
  %185 = load i32, i32* %15, align 4
  %186 = load i32, i32* @ENOTDIR, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %192

188:                                              ; preds = %184, %180
  %189 = load i32, i32* @out2, align 4
  %190 = load i8*, i8** %5, align 8
  %191 = call i32 (i32, i8*, i8*, ...) @outfmt(i32 %189, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %190)
  br label %198

192:                                              ; preds = %184
  %193 = load i32, i32* @out2, align 4
  %194 = load i8*, i8** %5, align 8
  %195 = load i32, i32* %15, align 4
  %196 = call i32 @strerror(i32 %195)
  %197 = call i32 (i32, i8*, i8*, ...) @outfmt(i32 %193, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %194, i32 %196)
  br label %198

198:                                              ; preds = %192, %188
  br label %199

199:                                              ; preds = %198, %175
  %200 = load i64, i64* @CMDUNKNOWN, align 8
  %201 = load %struct.cmdentry*, %struct.cmdentry** %6, align 8
  %202 = getelementptr inbounds %struct.cmdentry, %struct.cmdentry* %201, i32 0, i32 0
  store i64 %200, i64* %202, align 8
  %203 = load %struct.cmdentry*, %struct.cmdentry** %6, align 8
  %204 = getelementptr inbounds %struct.cmdentry, %struct.cmdentry* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 0
  store i32 0, i32* %205, align 4
  %206 = load %struct.cmdentry*, %struct.cmdentry** %6, align 8
  %207 = getelementptr inbounds %struct.cmdentry, %struct.cmdentry* %206, i32 0, i32 1
  store i32 0, i32* %207, align 8
  br label %229

208:                                              ; preds = %160, %142, %64, %48
  %209 = load i32, i32* %18, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %208
  store i32 1, i32* @cmdtable_cd, align 4
  br label %212

212:                                              ; preds = %211, %208
  %213 = load %struct.tblentry*, %struct.tblentry** %9, align 8
  %214 = getelementptr inbounds %struct.tblentry, %struct.tblentry* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.cmdentry*, %struct.cmdentry** %6, align 8
  %217 = getelementptr inbounds %struct.cmdentry, %struct.cmdentry* %216, i32 0, i32 0
  store i64 %215, i64* %217, align 8
  %218 = load %struct.cmdentry*, %struct.cmdentry** %6, align 8
  %219 = getelementptr inbounds %struct.cmdentry, %struct.cmdentry* %218, i32 0, i32 2
  %220 = load %struct.tblentry*, %struct.tblentry** %9, align 8
  %221 = getelementptr inbounds %struct.tblentry, %struct.tblentry* %220, i32 0, i32 2
  %222 = bitcast %struct.TYPE_2__* %219 to i8*
  %223 = bitcast %struct.TYPE_2__* %221 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %222, i8* align 4 %223, i64 4, i1 false)
  %224 = load %struct.tblentry*, %struct.tblentry** %9, align 8
  %225 = getelementptr inbounds %struct.tblentry, %struct.tblentry* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.cmdentry*, %struct.cmdentry** %6, align 8
  %228 = getelementptr inbounds %struct.cmdentry, %struct.cmdentry* %227, i32 0, i32 1
  store i32 %226, i32* %228, align 8
  br label %229

229:                                              ; preds = %212, %199, %22
  ret void
}

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local %struct.tblentry* @cmdlookup(i8*, i32) #1

declare dso_local i32 @find_builtin(i8*, i32*) #1

declare dso_local i8* @padvance(i8**, i8**, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @readcmdfile(i8*) #1

declare dso_local i32 @error(i8*, i8*, i8*) #1

declare dso_local i32 @stunalloc(i8*) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @outfmt(i32, i8*, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
