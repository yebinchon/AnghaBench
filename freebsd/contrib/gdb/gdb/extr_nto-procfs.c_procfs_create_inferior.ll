; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_nto-procfs.c_procfs_create_inferior.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_nto-procfs.c_procfs_create_inferior.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.inheritance = type { i32, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@inferior_io_terminal = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIG_UNBLOCK = common dso_local global i32 0, align 4
@nto_procfs_node = common dso_local global i32 0, align 4
@ND_LOCAL_NODE = common dso_local global i32 0, align 4
@SPAWN_SETND = common dso_local global i32 0, align 4
@SPAWN_EXEC = common dso_local global i32 0, align 4
@SPAWN_SETGROUP = common dso_local global i32 0, align 4
@SPAWN_HOLD = common dso_local global i32 0, align 4
@SPAWN_NEWPGROUP = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Error spawning %s: %d (%s)\00", align 1
@errno = common dso_local global i8* null, align 8
@inferior_ptid = common dso_local global i32 0, align 4
@attach_flag = common dso_local global i64 0, align 8
@_DEBUG_FLAG_KLC = common dso_local global i32 0, align 4
@ctl_fd = common dso_local global i32 0, align 4
@DCMD_PROC_SET_FLAG = common dso_local global i32 0, align 4
@EOK = common dso_local global i32 0, align 4
@procfs_ops = common dso_local global i32 0, align 4
@exec_bfd = common dso_local global i32* null, align 8
@symfile_objfile = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8**)* @procfs_create_inferior to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @procfs_create_inferior(i8* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.inheritance, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca [3 x i32], align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8** %2, i8*** %6, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = add nsw i32 %20, 1
  %22 = udiv i32 %21, 2
  %23 = add i32 %22, 2
  %24 = zext i32 %23 to i64
  %25 = mul i64 %24, 8
  %26 = trunc i64 %25 to i32
  %27 = call i8** @xmalloc(i32 %26)
  store i8** %27, i8*** %11, align 8
  %28 = call i8* @get_exec_file(i32 1)
  %29 = load i8**, i8*** %11, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  store i8* %28, i8** %30, align 8
  %31 = load i8**, i8*** %11, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %44, label %35

35:                                               ; preds = %3
  %36 = load i8*, i8** %4, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i8*, i8** %4, align 8
  %40 = load i8**, i8*** %11, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 0
  store i8* %39, i8** %41, align 8
  br label %43

42:                                               ; preds = %35
  br label %253

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43, %3
  %45 = load i8*, i8** %5, align 8
  %46 = call i8* @xstrdup(i8* %45)
  store i8* %46, i8** %12, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i8**, i8*** %11, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 1
  br label %56

53:                                               ; preds = %44
  %54 = load i8**, i8*** %11, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 0
  br label %56

56:                                               ; preds = %53, %50
  %57 = phi i8** [ %52, %50 ], [ %55, %53 ]
  %58 = call i32 @breakup_args(i8* %47, i8** %57)
  %59 = load i8**, i8*** %11, align 8
  %60 = call i8** @nto_parse_redirection(i8** %59, i8** %13, i8** %14, i8** %15)
  store i8** %60, i8*** %11, align 8
  %61 = load i32, i32* @STDIN_FILENO, align 4
  %62 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* @STDOUT_FILENO, align 4
  %64 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 1
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* @STDERR_FILENO, align 4
  %66 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 2
  store i32 %65, i32* %66, align 4
  %67 = load i8*, i8** @inferior_io_terminal, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %91

69:                                               ; preds = %56
  %70 = load i8*, i8** %13, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = icmp ne i8 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %69
  %75 = load i8*, i8** @inferior_io_terminal, align 8
  store i8* %75, i8** %13, align 8
  br label %76

76:                                               ; preds = %74, %69
  %77 = load i8*, i8** %14, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = icmp ne i8 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %76
  %82 = load i8*, i8** @inferior_io_terminal, align 8
  store i8* %82, i8** %14, align 8
  br label %83

83:                                               ; preds = %81, %76
  %84 = load i8*, i8** %15, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 0
  %86 = load i8, i8* %85, align 1
  %87 = icmp ne i8 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %83
  %89 = load i8*, i8** @inferior_io_terminal, align 8
  store i8* %89, i8** %15, align 8
  br label %90

90:                                               ; preds = %88, %83
  br label %91

91:                                               ; preds = %90, %56
  %92 = load i8*, i8** %13, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 0
  %94 = load i8, i8* %93, align 1
  %95 = icmp ne i8 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %91
  %97 = load i8*, i8** %13, align 8
  %98 = load i32, i32* @O_RDONLY, align 4
  %99 = call i32 @open(i8* %97, i32 %98)
  store i32 %99, i32* %16, align 4
  %100 = load i32, i32* %16, align 4
  %101 = icmp eq i32 %100, -1
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load i8*, i8** %13, align 8
  %104 = call i32 @perror(i8* %103)
  br label %108

105:                                              ; preds = %96
  %106 = load i32, i32* %16, align 4
  %107 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  store i32 %106, i32* %107, align 4
  br label %108

108:                                              ; preds = %105, %102
  br label %109

109:                                              ; preds = %108, %91
  %110 = load i8*, i8** %14, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 0
  %112 = load i8, i8* %111, align 1
  %113 = icmp ne i8 %112, 0
  br i1 %113, label %114, label %127

114:                                              ; preds = %109
  %115 = load i8*, i8** %14, align 8
  %116 = load i32, i32* @O_WRONLY, align 4
  %117 = call i32 @open(i8* %115, i32 %116)
  store i32 %117, i32* %16, align 4
  %118 = load i32, i32* %16, align 4
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = load i8*, i8** %14, align 8
  %122 = call i32 @perror(i8* %121)
  br label %126

123:                                              ; preds = %114
  %124 = load i32, i32* %16, align 4
  %125 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 1
  store i32 %124, i32* %125, align 4
  br label %126

126:                                              ; preds = %123, %120
  br label %127

127:                                              ; preds = %126, %109
  %128 = load i8*, i8** %15, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 0
  %130 = load i8, i8* %129, align 1
  %131 = icmp ne i8 %130, 0
  br i1 %131, label %132, label %145

132:                                              ; preds = %127
  %133 = load i8*, i8** %15, align 8
  %134 = load i32, i32* @O_WRONLY, align 4
  %135 = call i32 @open(i8* %133, i32 %134)
  store i32 %135, i32* %16, align 4
  %136 = load i32, i32* %16, align 4
  %137 = icmp eq i32 %136, -1
  br i1 %137, label %138, label %141

138:                                              ; preds = %132
  %139 = load i8*, i8** %15, align 8
  %140 = call i32 @perror(i8* %139)
  br label %144

141:                                              ; preds = %132
  %142 = load i32, i32* %16, align 4
  %143 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 2
  store i32 %142, i32* %143, align 4
  br label %144

144:                                              ; preds = %141, %138
  br label %145

145:                                              ; preds = %144, %127
  %146 = load i32, i32* @SIGUSR1, align 4
  %147 = load i32, i32* @SIGUSR1, align 4
  %148 = load i32, i32* @SIG_IGN, align 4
  %149 = call i32 @signal(i32 %147, i32 %148)
  %150 = call i32 @signal(i32 %146, i32 %149)
  %151 = call i32 @sigemptyset(i32* %18)
  %152 = load i32, i32* @SIGUSR1, align 4
  %153 = call i32 @sigaddset(i32* %18, i32 %152)
  %154 = load i32, i32* @SIG_UNBLOCK, align 4
  %155 = call i32 @sigprocmask(i32 %154, i32* %18, i32* null)
  %156 = call i32 @memset(%struct.inheritance* %7, i32 0, i32 12)
  %157 = load i32, i32* @nto_procfs_node, align 4
  %158 = load i32, i32* @ND_LOCAL_NODE, align 4
  %159 = call i64 @ND_NODE_CMP(i32 %157, i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %173

161:                                              ; preds = %145
  %162 = call i32 (...) @nto_node()
  %163 = getelementptr inbounds %struct.inheritance, %struct.inheritance* %7, i32 0, i32 2
  store i32 %162, i32* %163, align 4
  %164 = load i32, i32* @SPAWN_SETND, align 4
  %165 = getelementptr inbounds %struct.inheritance, %struct.inheritance* %7, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %166, %164
  store i32 %167, i32* %165, align 4
  %168 = load i32, i32* @SPAWN_EXEC, align 4
  %169 = xor i32 %168, -1
  %170 = getelementptr inbounds %struct.inheritance, %struct.inheritance* %7, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = and i32 %171, %169
  store i32 %172, i32* %170, align 4
  br label %173

173:                                              ; preds = %161, %145
  %174 = load i32, i32* @SPAWN_SETGROUP, align 4
  %175 = load i32, i32* @SPAWN_HOLD, align 4
  %176 = or i32 %174, %175
  %177 = getelementptr inbounds %struct.inheritance, %struct.inheritance* %7, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %178, %176
  store i32 %179, i32* %177, align 4
  %180 = load i32, i32* @SPAWN_NEWPGROUP, align 4
  %181 = getelementptr inbounds %struct.inheritance, %struct.inheritance* %7, i32 0, i32 1
  store i32 %180, i32* %181, align 4
  %182 = load i8**, i8*** %11, align 8
  %183 = getelementptr inbounds i8*, i8** %182, i64 0
  %184 = load i8*, i8** %183, align 8
  %185 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  %186 = load i8**, i8*** %11, align 8
  %187 = load i32, i32* @nto_procfs_node, align 4
  %188 = load i32, i32* @ND_LOCAL_NODE, align 4
  %189 = call i64 @ND_NODE_CMP(i32 %187, i32 %188)
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %173
  %192 = load i8**, i8*** %6, align 8
  br label %194

193:                                              ; preds = %173
  br label %194

194:                                              ; preds = %193, %191
  %195 = phi i8** [ %192, %191 ], [ null, %193 ]
  %196 = call i32 @spawnp(i8* %184, i32 3, i32* %185, %struct.inheritance* %7, i8** %186, i8** %195)
  store i32 %196, i32* %8, align 4
  %197 = load i8*, i8** %12, align 8
  %198 = call i32 @xfree(i8* %197)
  %199 = load i32, i32* @SIG_BLOCK, align 4
  %200 = call i32 @sigprocmask(i32 %199, i32* %18, i32* null)
  %201 = load i32, i32* %8, align 4
  %202 = icmp eq i32 %201, -1
  br i1 %202, label %203, label %211

203:                                              ; preds = %194
  %204 = load i8**, i8*** %11, align 8
  %205 = getelementptr inbounds i8*, i8** %204, i64 0
  %206 = load i8*, i8** %205, align 8
  %207 = load i8*, i8** @errno, align 8
  %208 = load i8*, i8** @errno, align 8
  %209 = call i32 @safe_strerror(i8* %208)
  %210 = call i32 @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %206, i8* %207, i32 %209)
  br label %211

211:                                              ; preds = %203, %194
  %212 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @STDIN_FILENO, align 4
  %215 = icmp ne i32 %213, %214
  br i1 %215, label %216, label %220

216:                                              ; preds = %211
  %217 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @close(i32 %218)
  br label %220

220:                                              ; preds = %216, %211
  %221 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 1
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @STDOUT_FILENO, align 4
  %224 = icmp ne i32 %222, %223
  br i1 %224, label %225, label %229

225:                                              ; preds = %220
  %226 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 1
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @close(i32 %227)
  br label %229

229:                                              ; preds = %225, %220
  %230 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 2
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @STDERR_FILENO, align 4
  %233 = icmp ne i32 %231, %232
  br i1 %233, label %234, label %238

234:                                              ; preds = %229
  %235 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 2
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @close(i32 %236)
  br label %238

238:                                              ; preds = %234, %229
  %239 = load i32, i32* %8, align 4
  %240 = call i32 @pid_to_ptid(i32 %239)
  %241 = call i32 @do_attach(i32 %240)
  store i32 %241, i32* @inferior_ptid, align 4
  store i64 0, i64* @attach_flag, align 8
  %242 = load i32, i32* @_DEBUG_FLAG_KLC, align 4
  store i32 %242, i32* %9, align 4
  %243 = load i32, i32* @ctl_fd, align 4
  %244 = load i32, i32* @DCMD_PROC_SET_FLAG, align 4
  %245 = call i32 @devctl(i32 %243, i32 %244, i32* %9, i32 4, i32 0)
  store i32 %245, i32* %10, align 4
  %246 = load i32, i32* %10, align 4
  %247 = load i32, i32* @EOK, align 4
  %248 = icmp ne i32 %246, %247
  br i1 %248, label %249, label %250

249:                                              ; preds = %238
  br label %250

250:                                              ; preds = %249, %238
  %251 = call i32 @push_target(i32* @procfs_ops)
  %252 = call i32 (...) @target_terminal_init()
  br label %253

253:                                              ; preds = %250, %42
  ret void
}

declare dso_local i8** @xmalloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @get_exec_file(i32) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @breakup_args(i8*, i8**) #1

declare dso_local i8** @nto_parse_redirection(i8**, i8**, i8**, i8**) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @memset(%struct.inheritance*, i32, i32) #1

declare dso_local i64 @ND_NODE_CMP(i32, i32) #1

declare dso_local i32 @nto_node(...) #1

declare dso_local i32 @spawnp(i8*, i32, i32*, %struct.inheritance*, i8**, i8**) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i32 @error(i8*, i8*, i8*, i32) #1

declare dso_local i32 @safe_strerror(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @do_attach(i32) #1

declare dso_local i32 @pid_to_ptid(i32) #1

declare dso_local i32 @devctl(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @push_target(i32*) #1

declare dso_local i32 @target_terminal_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
