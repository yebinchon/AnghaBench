; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_file.c_cifs_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_file.c_cifs_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifsFileInfo = type { i32, i64, i32, %struct.dentry* }
%struct.dentry = type { %struct.TYPE_6__*, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.cifs_sb_info = type { i64 }
%struct.cifs_tcon = type { i32 }
%struct.cifsInodeInfo = type { i32 }
%struct.cifs_io_parms = type { i32, i64, %struct.cifs_tcon*, i32, i32 }
%struct.kvec = type { i8*, i32 }

@.str = private unnamed_addr constant [37 x i8] c"write %zd bytes to offset %lld of %s\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cifsFileInfo*, i32, i8*, i64, i64*)* @cifs_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_write(%struct.cifsFileInfo* %0, i32 %1, i8* %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cifsFileInfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.cifs_sb_info*, align 8
  %16 = alloca %struct.cifs_tcon*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.dentry*, align 8
  %19 = alloca %struct.cifsInodeInfo*, align 8
  %20 = alloca %struct.cifs_io_parms, align 8
  %21 = alloca [2 x %struct.kvec], align 16
  %22 = alloca i32, align 4
  store %struct.cifsFileInfo* %0, %struct.cifsFileInfo** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %23 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %7, align 8
  %24 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %23, i32 0, i32 3
  %25 = load %struct.dentry*, %struct.dentry** %24, align 8
  store %struct.dentry* %25, %struct.dentry** %18, align 8
  %26 = load %struct.dentry*, %struct.dentry** %18, align 8
  %27 = getelementptr inbounds %struct.dentry, %struct.dentry* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = call %struct.cifsInodeInfo* @CIFS_I(%struct.TYPE_6__* %28)
  store %struct.cifsInodeInfo* %29, %struct.cifsInodeInfo** %19, align 8
  %30 = load %struct.dentry*, %struct.dentry** %18, align 8
  %31 = getelementptr inbounds %struct.dentry, %struct.dentry* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.cifs_sb_info* @CIFS_SB(i32 %32)
  store %struct.cifs_sb_info* %33, %struct.cifs_sb_info** %15, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i64*, i64** %11, align 8
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.dentry*, %struct.dentry** %18, align 8
  %38 = getelementptr inbounds %struct.dentry, %struct.dentry* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %34, i64 %36, i32 %40)
  %42 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %7, align 8
  %43 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call %struct.cifs_tcon* @tlink_tcon(i32 %44)
  store %struct.cifs_tcon* %45, %struct.cifs_tcon** %16, align 8
  %46 = call i32 (...) @GetXid()
  store i32 %46, i32* %17, align 4
  store i32 0, i32* %14, align 4
  br label %47

47:                                               ; preds = %142, %5
  %48 = load i64, i64* %10, align 8
  %49 = load i32, i32* %14, align 4
  %50 = zext i32 %49 to i64
  %51 = icmp ugt i64 %48, %50
  br i1 %51, label %52, label %146

52:                                               ; preds = %47
  %53 = load i32, i32* @EAGAIN, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %72, %52
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @EAGAIN, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %106

60:                                               ; preds = %55
  %61 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %7, align 8
  %62 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %7, align 8
  %67 = call i32 @cifs_reopen_file(%struct.cifsFileInfo* %66, i32 0)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %106

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %71, %60
  %73 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %15, align 8
  %74 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %10, align 8
  %77 = load i32, i32* %14, align 4
  %78 = zext i32 %77 to i64
  %79 = sub i64 %76, %78
  %80 = call i32 @min(i64 %75, i64 %79)
  store i32 %80, i32* %22, align 4
  %81 = load i8*, i8** %9, align 8
  %82 = load i32, i32* %14, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %21, i64 0, i64 1
  %86 = getelementptr inbounds %struct.kvec, %struct.kvec* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 16
  %87 = load i32, i32* %22, align 4
  %88 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %21, i64 0, i64 1
  %89 = getelementptr inbounds %struct.kvec, %struct.kvec* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 8
  %90 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %7, align 8
  %91 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %20, i32 0, i32 4
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* %8, align 4
  %95 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %20, i32 0, i32 3
  store i32 %94, i32* %95, align 8
  %96 = load %struct.cifs_tcon*, %struct.cifs_tcon** %16, align 8
  %97 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %20, i32 0, i32 2
  store %struct.cifs_tcon* %96, %struct.cifs_tcon** %97, align 8
  %98 = load i64*, i64** %11, align 8
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %20, i32 0, i32 1
  store i64 %99, i64* %100, align 8
  %101 = load i32, i32* %22, align 4
  %102 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %20, i32 0, i32 0
  store i32 %101, i32* %102, align 8
  %103 = load i32, i32* %17, align 4
  %104 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %21, i64 0, i64 0
  %105 = call i32 @CIFSSMBWrite2(i32 %103, %struct.cifs_io_parms* %20, i32* %13, %struct.kvec* %104, i32 1, i32 0)
  store i32 %105, i32* %12, align 4
  br label %55

106:                                              ; preds = %70, %55
  %107 = load i32, i32* %12, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %13, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %109, %106
  %113 = load i32, i32* %14, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  br label %146

116:                                              ; preds = %112
  %117 = load i32, i32* %17, align 4
  %118 = call i32 @FreeXid(i32 %117)
  %119 = load i32, i32* %12, align 4
  store i32 %119, i32* %6, align 4
  br label %187

120:                                              ; preds = %109
  %121 = load %struct.dentry*, %struct.dentry** %18, align 8
  %122 = getelementptr inbounds %struct.dentry, %struct.dentry* %121, i32 0, i32 0
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = call i32 @spin_lock(i32* %124)
  %126 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %19, align 8
  %127 = load i64*, i64** %11, align 8
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* %13, align 4
  %130 = call i32 @cifs_update_eof(%struct.cifsInodeInfo* %126, i64 %128, i32 %129)
  %131 = load %struct.dentry*, %struct.dentry** %18, align 8
  %132 = getelementptr inbounds %struct.dentry, %struct.dentry* %131, i32 0, i32 0
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  %135 = call i32 @spin_unlock(i32* %134)
  %136 = load i32, i32* %13, align 4
  %137 = zext i32 %136 to i64
  %138 = load i64*, i64** %11, align 8
  %139 = load i64, i64* %138, align 8
  %140 = add nsw i64 %139, %137
  store i64 %140, i64* %138, align 8
  br label %141

141:                                              ; preds = %120
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %13, align 4
  %144 = load i32, i32* %14, align 4
  %145 = add i32 %144, %143
  store i32 %145, i32* %14, align 4
  br label %47

146:                                              ; preds = %115, %47
  %147 = load %struct.cifs_tcon*, %struct.cifs_tcon** %16, align 8
  %148 = load i32, i32* %14, align 4
  %149 = call i32 @cifs_stats_bytes_written(%struct.cifs_tcon* %147, i32 %148)
  %150 = load i32, i32* %14, align 4
  %151 = icmp ugt i32 %150, 0
  br i1 %151, label %152, label %179

152:                                              ; preds = %146
  %153 = load %struct.dentry*, %struct.dentry** %18, align 8
  %154 = getelementptr inbounds %struct.dentry, %struct.dentry* %153, i32 0, i32 0
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 1
  %157 = call i32 @spin_lock(i32* %156)
  %158 = load i64*, i64** %11, align 8
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.dentry*, %struct.dentry** %18, align 8
  %161 = getelementptr inbounds %struct.dentry, %struct.dentry* %160, i32 0, i32 0
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp sgt i64 %159, %164
  br i1 %165, label %166, label %173

166:                                              ; preds = %152
  %167 = load %struct.dentry*, %struct.dentry** %18, align 8
  %168 = getelementptr inbounds %struct.dentry, %struct.dentry* %167, i32 0, i32 0
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = load i64*, i64** %11, align 8
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @i_size_write(%struct.TYPE_6__* %169, i64 %171)
  br label %173

173:                                              ; preds = %166, %152
  %174 = load %struct.dentry*, %struct.dentry** %18, align 8
  %175 = getelementptr inbounds %struct.dentry, %struct.dentry* %174, i32 0, i32 0
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 1
  %178 = call i32 @spin_unlock(i32* %177)
  br label %179

179:                                              ; preds = %173, %146
  %180 = load %struct.dentry*, %struct.dentry** %18, align 8
  %181 = getelementptr inbounds %struct.dentry, %struct.dentry* %180, i32 0, i32 0
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %181, align 8
  %183 = call i32 @mark_inode_dirty_sync(%struct.TYPE_6__* %182)
  %184 = load i32, i32* %17, align 4
  %185 = call i32 @FreeXid(i32 %184)
  %186 = load i32, i32* %14, align 4
  store i32 %186, i32* %6, align 4
  br label %187

187:                                              ; preds = %179, %116
  %188 = load i32, i32* %6, align 4
  ret i32 %188
}

declare dso_local %struct.cifsInodeInfo* @CIFS_I(%struct.TYPE_6__*) #1

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local i32 @cFYI(i32, i8*, i64, i64, i32) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(i32) #1

declare dso_local i32 @GetXid(...) #1

declare dso_local i32 @cifs_reopen_file(%struct.cifsFileInfo*, i32) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i32 @CIFSSMBWrite2(i32, %struct.cifs_io_parms*, i32*, %struct.kvec*, i32, i32) #1

declare dso_local i32 @FreeXid(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cifs_update_eof(%struct.cifsInodeInfo*, i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cifs_stats_bytes_written(%struct.cifs_tcon*, i32) #1

declare dso_local i32 @i_size_write(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @mark_inode_dirty_sync(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
