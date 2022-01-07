; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_v9fs.c_v9fs_session_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_v9fs.c_v9fs_session_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_fid = type { i32, i64, i32 }
%struct.v9fs_session_info = type { i32, i32, i8*, i8*, %struct.p9_fid*, i64, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@v9fs_sessionlist_lock = common dso_local global i32 0, align 4
@v9fs_sessionlist = common dso_local global i32 0, align 4
@V9FS_EXTENDED = common dso_local global i32 0, align 4
@V9FS_ACCESS_USER = common dso_local global i32 0, align 4
@V9FS_DEFUSER = common dso_local global i32 0, align 4
@V9FS_DEFANAME = common dso_local global i32 0, align 4
@V9FS_DEFUID = common dso_local global i32 0, align 4
@V9FS_DEFGID = common dso_local global i32 0, align 4
@P9_DEBUG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"problem initializing 9p client\0A\00", align 1
@P9_IOHDRSZ = common dso_local global i64 0, align 8
@V9FS_ACCESS_MASK = common dso_local global i32 0, align 4
@V9FS_ACCESS_ANY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"cannot attach\0A\00", align 1
@V9FS_ACCESS_SINGLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.p9_fid* @v9fs_session_init(%struct.v9fs_session_info* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.p9_fid*, align 8
  %5 = alloca %struct.v9fs_session_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.p9_fid*, align 8
  %10 = alloca i32, align 4
  store %struct.v9fs_session_info* %0, %struct.v9fs_session_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = call i8* (...) @__getname()
  %14 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %15 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %14, i32 0, i32 3
  store i8* %13, i8** %15, align 8
  %16 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %17 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %16, i32 0, i32 3
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.p9_fid* @ERR_PTR(i32 %22)
  store %struct.p9_fid* %23, %struct.p9_fid** %4, align 8
  br label %186

24:                                               ; preds = %3
  %25 = call i8* (...) @__getname()
  %26 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %27 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %29 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %24
  %33 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %34 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %33, i32 0, i32 3
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @__putname(i8* %35)
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.p9_fid* @ERR_PTR(i32 %38)
  store %struct.p9_fid* %39, %struct.p9_fid** %4, align 8
  br label %186

40:                                               ; preds = %24
  %41 = call i32 @spin_lock(i32* @v9fs_sessionlist_lock)
  %42 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %43 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %42, i32 0, i32 8
  %44 = call i32 @list_add(i32* %43, i32* @v9fs_sessionlist)
  %45 = call i32 @spin_unlock(i32* @v9fs_sessionlist_lock)
  %46 = load i32, i32* @V9FS_EXTENDED, align 4
  %47 = load i32, i32* @V9FS_ACCESS_USER, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %50 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %52 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %51, i32 0, i32 3
  %53 = load i8*, i8** %52, align 8
  %54 = load i32, i32* @V9FS_DEFUSER, align 4
  %55 = call i32 @strcpy(i8* %53, i32 %54)
  %56 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %57 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* @V9FS_DEFANAME, align 4
  %60 = call i32 @strcpy(i8* %58, i32 %59)
  %61 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %62 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %61, i32 0, i32 1
  store i32 -1, i32* %62, align 4
  %63 = load i32, i32* @V9FS_DEFUID, align 4
  %64 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %65 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %64, i32 0, i32 7
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @V9FS_DEFGID, align 4
  %67 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %68 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %67, i32 0, i32 6
  store i32 %66, i32* %68, align 8
  %69 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @v9fs_parse_options(%struct.v9fs_session_info* %69, i8* %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %40
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %8, align 4
  br label %183

76:                                               ; preds = %40
  %77 = load i8*, i8** %6, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = call %struct.p9_fid* @p9_client_create(i8* %77, i8* %78)
  %80 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %81 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %80, i32 0, i32 4
  store %struct.p9_fid* %79, %struct.p9_fid** %81, align 8
  %82 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %83 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %82, i32 0, i32 4
  %84 = load %struct.p9_fid*, %struct.p9_fid** %83, align 8
  %85 = call i64 @IS_ERR(%struct.p9_fid* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %76
  %88 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %89 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %88, i32 0, i32 4
  %90 = load %struct.p9_fid*, %struct.p9_fid** %89, align 8
  %91 = call i32 @PTR_ERR(%struct.p9_fid* %90)
  store i32 %91, i32* %8, align 4
  %92 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %93 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %92, i32 0, i32 4
  store %struct.p9_fid* null, %struct.p9_fid** %93, align 8
  %94 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %95 = call i32 @P9_DPRINTK(i32 %94, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %183

96:                                               ; preds = %76
  %97 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %98 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %97, i32 0, i32 4
  %99 = load %struct.p9_fid*, %struct.p9_fid** %98, align 8
  %100 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %96
  %104 = load i32, i32* @V9FS_EXTENDED, align 4
  %105 = xor i32 %104, -1
  %106 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %107 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = and i32 %108, %105
  store i32 %109, i32* %107, align 8
  br label %110

110:                                              ; preds = %103, %96
  %111 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %112 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %111, i32 0, i32 4
  %113 = load %struct.p9_fid*, %struct.p9_fid** %112, align 8
  %114 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @P9_IOHDRSZ, align 8
  %117 = sub nsw i64 %115, %116
  %118 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %119 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %118, i32 0, i32 5
  store i64 %117, i64* %119, align 8
  %120 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %121 = call i32 @v9fs_extended(%struct.v9fs_session_info* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %145, label %123

123:                                              ; preds = %110
  %124 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %125 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @V9FS_ACCESS_MASK, align 4
  %128 = and i32 %126, %127
  %129 = load i32, i32* @V9FS_ACCESS_USER, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %145

131:                                              ; preds = %123
  %132 = load i32, i32* @V9FS_ACCESS_MASK, align 4
  %133 = xor i32 %132, -1
  %134 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %135 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = and i32 %136, %133
  store i32 %137, i32* %135, align 8
  %138 = load i32, i32* @V9FS_ACCESS_ANY, align 4
  %139 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %140 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 8
  %143 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %144 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %143, i32 0, i32 1
  store i32 -1, i32* %144, align 4
  br label %145

145:                                              ; preds = %131, %123, %110
  %146 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %147 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %146, i32 0, i32 4
  %148 = load %struct.p9_fid*, %struct.p9_fid** %147, align 8
  %149 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %150 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %149, i32 0, i32 3
  %151 = load i8*, i8** %150, align 8
  %152 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %153 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %152, i32 0, i32 2
  %154 = load i8*, i8** %153, align 8
  %155 = call %struct.p9_fid* @p9_client_attach(%struct.p9_fid* %148, i32* null, i8* %151, i32 -1, i8* %154)
  store %struct.p9_fid* %155, %struct.p9_fid** %9, align 8
  %156 = load %struct.p9_fid*, %struct.p9_fid** %9, align 8
  %157 = call i64 @IS_ERR(%struct.p9_fid* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %145
  %160 = load %struct.p9_fid*, %struct.p9_fid** %9, align 8
  %161 = call i32 @PTR_ERR(%struct.p9_fid* %160)
  store i32 %161, i32* %8, align 4
  store %struct.p9_fid* null, %struct.p9_fid** %9, align 8
  %162 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %163 = call i32 @P9_DPRINTK(i32 %162, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %183

164:                                              ; preds = %145
  %165 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %166 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @V9FS_ACCESS_MASK, align 4
  %169 = and i32 %167, %168
  %170 = load i32, i32* @V9FS_ACCESS_SINGLE, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %178

172:                                              ; preds = %164
  %173 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %174 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.p9_fid*, %struct.p9_fid** %9, align 8
  %177 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 8
  br label %181

178:                                              ; preds = %164
  %179 = load %struct.p9_fid*, %struct.p9_fid** %9, align 8
  %180 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %179, i32 0, i32 0
  store i32 -1, i32* %180, align 8
  br label %181

181:                                              ; preds = %178, %172
  %182 = load %struct.p9_fid*, %struct.p9_fid** %9, align 8
  store %struct.p9_fid* %182, %struct.p9_fid** %4, align 8
  br label %186

183:                                              ; preds = %159, %87, %74
  %184 = load i32, i32* %8, align 4
  %185 = call %struct.p9_fid* @ERR_PTR(i32 %184)
  store %struct.p9_fid* %185, %struct.p9_fid** %4, align 8
  br label %186

186:                                              ; preds = %183, %181, %32, %20
  %187 = load %struct.p9_fid*, %struct.p9_fid** %4, align 8
  ret %struct.p9_fid* %187
}

declare dso_local i8* @__getname(...) #1

declare dso_local %struct.p9_fid* @ERR_PTR(i32) #1

declare dso_local i32 @__putname(i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @v9fs_parse_options(%struct.v9fs_session_info*, i8*) #1

declare dso_local %struct.p9_fid* @p9_client_create(i8*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.p9_fid*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_fid*) #1

declare dso_local i32 @P9_DPRINTK(i32, i8*) #1

declare dso_local i32 @v9fs_extended(%struct.v9fs_session_info*) #1

declare dso_local %struct.p9_fid* @p9_client_attach(%struct.p9_fid*, i32*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
