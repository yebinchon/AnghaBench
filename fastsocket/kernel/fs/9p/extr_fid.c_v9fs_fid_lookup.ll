; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_fid.c_v9fs_fid_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_fid.c_v9fs_fid_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_fid = type { i32 }
%struct.dentry = type { %struct.TYPE_2__, %struct.dentry*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.v9fs_session_info = type { i32, i8*, i32, i32, i32 }

@V9FS_ACCESS_MASK = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@P9_MAXWELEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.p9_fid* @v9fs_fid_lookup(%struct.dentry* %0) #0 {
  %2 = alloca %struct.p9_fid*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.p9_fid*, align 8
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca %struct.dentry*, align 8
  %14 = alloca %struct.v9fs_session_info*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i8*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  %17 = load %struct.dentry*, %struct.dentry** %3, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.v9fs_session_info* @v9fs_inode2v9ses(i32 %19)
  store %struct.v9fs_session_info* %20, %struct.v9fs_session_info** %14, align 8
  %21 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %14, align 8
  %22 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @V9FS_ACCESS_MASK, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  switch i32 %26, label %33 [
    i32 129, label %27
    i32 128, label %27
    i32 130, label %29
  ]

27:                                               ; preds = %1, %1
  %28 = call i32 (...) @current_fsuid()
  store i32 %28, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %34

29:                                               ; preds = %1
  %30 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %14, align 8
  %31 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %10, align 4
  store i32 1, i32* %8, align 4
  br label %34

33:                                               ; preds = %1
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %33, %29, %27
  %35 = load %struct.dentry*, %struct.dentry** %3, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call %struct.p9_fid* @v9fs_fid_find(%struct.dentry* %35, i32 %36, i32 %37)
  store %struct.p9_fid* %38, %struct.p9_fid** %11, align 8
  %39 = load %struct.p9_fid*, %struct.p9_fid** %11, align 8
  %40 = icmp ne %struct.p9_fid* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load %struct.p9_fid*, %struct.p9_fid** %11, align 8
  store %struct.p9_fid* %42, %struct.p9_fid** %2, align 8
  br label %190

43:                                               ; preds = %34
  %44 = load %struct.dentry*, %struct.dentry** %3, align 8
  %45 = getelementptr inbounds %struct.dentry, %struct.dentry* %44, i32 0, i32 1
  %46 = load %struct.dentry*, %struct.dentry** %45, align 8
  store %struct.dentry* %46, %struct.dentry** %13, align 8
  %47 = load %struct.dentry*, %struct.dentry** %13, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call %struct.p9_fid* @v9fs_fid_find(%struct.dentry* %47, i32 %48, i32 %49)
  store %struct.p9_fid* %50, %struct.p9_fid** %11, align 8
  %51 = load %struct.p9_fid*, %struct.p9_fid** %11, align 8
  %52 = icmp ne %struct.p9_fid* %51, null
  br i1 %52, label %110, label %53

53:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  %54 = load %struct.dentry*, %struct.dentry** %3, align 8
  store %struct.dentry* %54, %struct.dentry** %13, align 8
  br label %55

55:                                               ; preds = %63, %53
  %56 = load %struct.dentry*, %struct.dentry** %13, align 8
  %57 = call i32 @IS_ROOT(%struct.dentry* %56)
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %60
  %64 = load %struct.dentry*, %struct.dentry** %13, align 8
  %65 = getelementptr inbounds %struct.dentry, %struct.dentry* %64, i32 0, i32 1
  %66 = load %struct.dentry*, %struct.dentry** %65, align 8
  store %struct.dentry* %66, %struct.dentry** %13, align 8
  br label %55

67:                                               ; preds = %55
  %68 = load %struct.dentry*, %struct.dentry** %13, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call %struct.p9_fid* @v9fs_fid_find(%struct.dentry* %68, i32 %69, i32 %70)
  store %struct.p9_fid* %71, %struct.p9_fid** %11, align 8
  %72 = load %struct.p9_fid*, %struct.p9_fid** %11, align 8
  %73 = icmp ne %struct.p9_fid* %72, null
  br i1 %73, label %109, label %74

74:                                               ; preds = %67
  %75 = load i32, i32* %9, align 4
  %76 = icmp eq i32 %75, 129
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32, i32* @EPERM, align 4
  %79 = sub nsw i32 0, %78
  %80 = call %struct.p9_fid* @ERR_PTR(i32 %79)
  store %struct.p9_fid* %80, %struct.p9_fid** %2, align 8
  br label %190

81:                                               ; preds = %74
  %82 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %14, align 8
  %83 = call i64 @v9fs_extended(%struct.v9fs_session_info* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i8* null, i8** %16, align 8
  br label %90

86:                                               ; preds = %81
  %87 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %14, align 8
  %88 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  store i8* %89, i8** %16, align 8
  br label %90

90:                                               ; preds = %86, %85
  %91 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %14, align 8
  %92 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load i8*, i8** %16, align 8
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %14, align 8
  %97 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call %struct.p9_fid* @p9_client_attach(i32 %93, i32* null, i8* %94, i32 %95, i32 %98)
  store %struct.p9_fid* %99, %struct.p9_fid** %11, align 8
  %100 = load %struct.p9_fid*, %struct.p9_fid** %11, align 8
  %101 = call i64 @IS_ERR(%struct.p9_fid* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %90
  %104 = load %struct.p9_fid*, %struct.p9_fid** %11, align 8
  store %struct.p9_fid* %104, %struct.p9_fid** %2, align 8
  br label %190

105:                                              ; preds = %90
  %106 = load %struct.dentry*, %struct.dentry** %13, align 8
  %107 = load %struct.p9_fid*, %struct.p9_fid** %11, align 8
  %108 = call i32 @v9fs_fid_add(%struct.dentry* %106, %struct.p9_fid* %107)
  br label %109

109:                                              ; preds = %105, %67
  br label %111

110:                                              ; preds = %43
  store i32 1, i32* %5, align 4
  br label %111

111:                                              ; preds = %110, %109
  %112 = load %struct.dentry*, %struct.dentry** %13, align 8
  %113 = load %struct.dentry*, %struct.dentry** %3, align 8
  %114 = icmp eq %struct.dentry* %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = load %struct.p9_fid*, %struct.p9_fid** %11, align 8
  store %struct.p9_fid* %116, %struct.p9_fid** %2, align 8
  br label %190

117:                                              ; preds = %111
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = mul i64 8, %119
  %121 = trunc i64 %120 to i32
  %122 = load i32, i32* @GFP_KERNEL, align 4
  %123 = call i8** @kmalloc(i32 %121, i32 %122)
  store i8** %123, i8*** %15, align 8
  %124 = load i8**, i8*** %15, align 8
  %125 = icmp ne i8** %124, null
  br i1 %125, label %130, label %126

126:                                              ; preds = %117
  %127 = load i32, i32* @ENOMEM, align 4
  %128 = sub nsw i32 0, %127
  %129 = call %struct.p9_fid* @ERR_PTR(i32 %128)
  store %struct.p9_fid* %129, %struct.p9_fid** %2, align 8
  br label %190

130:                                              ; preds = %117
  %131 = load %struct.dentry*, %struct.dentry** %3, align 8
  store %struct.dentry* %131, %struct.dentry** %12, align 8
  %132 = load i32, i32* %5, align 4
  %133 = sub nsw i32 %132, 1
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %147, %130
  %135 = load i32, i32* %4, align 4
  %136 = icmp sge i32 %135, 0
  br i1 %136, label %137, label %153

137:                                              ; preds = %134
  %138 = load %struct.dentry*, %struct.dentry** %12, align 8
  %139 = getelementptr inbounds %struct.dentry, %struct.dentry* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = inttoptr i64 %141 to i8*
  %143 = load i8**, i8*** %15, align 8
  %144 = load i32, i32* %4, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8*, i8** %143, i64 %145
  store i8* %142, i8** %146, align 8
  br label %147

147:                                              ; preds = %137
  %148 = load i32, i32* %4, align 4
  %149 = add nsw i32 %148, -1
  store i32 %149, i32* %4, align 4
  %150 = load %struct.dentry*, %struct.dentry** %12, align 8
  %151 = getelementptr inbounds %struct.dentry, %struct.dentry* %150, i32 0, i32 1
  %152 = load %struct.dentry*, %struct.dentry** %151, align 8
  store %struct.dentry* %152, %struct.dentry** %12, align 8
  br label %134

153:                                              ; preds = %134
  store i32 1, i32* %7, align 4
  store i32 0, i32* %4, align 4
  br label %154

154:                                              ; preds = %179, %153
  %155 = load i32, i32* %4, align 4
  %156 = load i32, i32* %5, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %183

158:                                              ; preds = %154
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* %4, align 4
  %161 = sub nsw i32 %159, %160
  %162 = load i32, i32* @P9_MAXWELEM, align 4
  %163 = call i32 @min(i32 %161, i32 %162)
  store i32 %163, i32* %6, align 4
  %164 = load %struct.p9_fid*, %struct.p9_fid** %11, align 8
  %165 = load i32, i32* %6, align 4
  %166 = load i8**, i8*** %15, align 8
  %167 = load i32, i32* %4, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8*, i8** %166, i64 %168
  %170 = load i32, i32* %7, align 4
  %171 = call %struct.p9_fid* @p9_client_walk(%struct.p9_fid* %164, i32 %165, i8** %169, i32 %170)
  store %struct.p9_fid* %171, %struct.p9_fid** %11, align 8
  %172 = load %struct.p9_fid*, %struct.p9_fid** %11, align 8
  %173 = call i64 @IS_ERR(%struct.p9_fid* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %158
  %176 = load i8**, i8*** %15, align 8
  %177 = call i32 @kfree(i8** %176)
  %178 = load %struct.p9_fid*, %struct.p9_fid** %11, align 8
  store %struct.p9_fid* %178, %struct.p9_fid** %2, align 8
  br label %190

179:                                              ; preds = %158
  %180 = load i32, i32* %6, align 4
  %181 = load i32, i32* %4, align 4
  %182 = add nsw i32 %181, %180
  store i32 %182, i32* %4, align 4
  store i32 0, i32* %7, align 4
  br label %154

183:                                              ; preds = %154
  %184 = load i8**, i8*** %15, align 8
  %185 = call i32 @kfree(i8** %184)
  %186 = load %struct.dentry*, %struct.dentry** %3, align 8
  %187 = load %struct.p9_fid*, %struct.p9_fid** %11, align 8
  %188 = call i32 @v9fs_fid_add(%struct.dentry* %186, %struct.p9_fid* %187)
  %189 = load %struct.p9_fid*, %struct.p9_fid** %11, align 8
  store %struct.p9_fid* %189, %struct.p9_fid** %2, align 8
  br label %190

190:                                              ; preds = %183, %175, %126, %115, %103, %77, %41
  %191 = load %struct.p9_fid*, %struct.p9_fid** %2, align 8
  ret %struct.p9_fid* %191
}

declare dso_local %struct.v9fs_session_info* @v9fs_inode2v9ses(i32) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local %struct.p9_fid* @v9fs_fid_find(%struct.dentry*, i32, i32) #1

declare dso_local i32 @IS_ROOT(%struct.dentry*) #1

declare dso_local %struct.p9_fid* @ERR_PTR(i32) #1

declare dso_local i64 @v9fs_extended(%struct.v9fs_session_info*) #1

declare dso_local %struct.p9_fid* @p9_client_attach(i32, i32*, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.p9_fid*) #1

declare dso_local i32 @v9fs_fid_add(%struct.dentry*, %struct.p9_fid*) #1

declare dso_local i8** @kmalloc(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.p9_fid* @p9_client_walk(%struct.p9_fid*, i32, i8**, i32) #1

declare dso_local i32 @kfree(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
