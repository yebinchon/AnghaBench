; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/exportfs/extr_expfs.c_exportfs_decode_fh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/exportfs/extr_expfs.c_exportfs_decode_fh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.vfsmount = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.export_operations* }
%struct.export_operations = type { %struct.dentry* (%struct.TYPE_5__*, %struct.fid*, i32, i32)*, %struct.dentry* (%struct.TYPE_5__*, %struct.fid*, i32, i32)* }
%struct.fid = type { i32 }

@NAME_MAX = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@DCACHE_DISCONNECTED = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @exportfs_decode_fh(%struct.vfsmount* %0, %struct.fid* %1, i32 %2, i32 %3, i32 (i8*, %struct.dentry*)* %4, i8* %5) #0 {
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.vfsmount*, align 8
  %9 = alloca %struct.fid*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32 (i8*, %struct.dentry*)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.export_operations*, align 8
  %15 = alloca %struct.dentry*, align 8
  %16 = alloca %struct.dentry*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.dentry*, align 8
  %22 = alloca %struct.dentry*, align 8
  store %struct.vfsmount* %0, %struct.vfsmount** %8, align 8
  store %struct.fid* %1, %struct.fid** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 (i8*, %struct.dentry*)* %4, i32 (i8*, %struct.dentry*)** %12, align 8
  store i8* %5, i8** %13, align 8
  %23 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %24 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.export_operations*, %struct.export_operations** %26, align 8
  store %struct.export_operations* %27, %struct.export_operations** %14, align 8
  %28 = load i32, i32* @NAME_MAX, align 4
  %29 = add nsw i32 %28, 1
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %17, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %18, align 8
  %33 = load %struct.export_operations*, %struct.export_operations** %14, align 8
  %34 = getelementptr inbounds %struct.export_operations, %struct.export_operations* %33, i32 0, i32 1
  %35 = load %struct.dentry* (%struct.TYPE_5__*, %struct.fid*, i32, i32)*, %struct.dentry* (%struct.TYPE_5__*, %struct.fid*, i32, i32)** %34, align 8
  %36 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %37 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load %struct.fid*, %struct.fid** %9, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call %struct.dentry* %35(%struct.TYPE_5__* %38, %struct.fid* %39, i32 %40, i32 %41)
  store %struct.dentry* %42, %struct.dentry** %15, align 8
  %43 = load %struct.dentry*, %struct.dentry** %15, align 8
  %44 = icmp ne %struct.dentry* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %6
  %46 = load i32, i32* @ESTALE, align 4
  %47 = sub nsw i32 0, %46
  %48 = call %struct.dentry* @ERR_PTR(i32 %47)
  store %struct.dentry* %48, %struct.dentry** %15, align 8
  br label %49

49:                                               ; preds = %45, %6
  %50 = load %struct.dentry*, %struct.dentry** %15, align 8
  %51 = call i64 @IS_ERR(%struct.dentry* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load %struct.dentry*, %struct.dentry** %15, align 8
  store %struct.dentry* %54, %struct.dentry** %7, align 8
  store i32 1, i32* %20, align 4
  br label %193

55:                                               ; preds = %49
  %56 = load %struct.dentry*, %struct.dentry** %15, align 8
  %57 = getelementptr inbounds %struct.dentry, %struct.dentry* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @S_ISDIR(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %89

63:                                               ; preds = %55
  %64 = load %struct.dentry*, %struct.dentry** %15, align 8
  %65 = getelementptr inbounds %struct.dentry, %struct.dentry* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @DCACHE_DISCONNECTED, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %63
  %71 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %72 = load %struct.dentry*, %struct.dentry** %15, align 8
  %73 = call i32 @reconnect_path(%struct.vfsmount* %71, %struct.dentry* %72, i8* %32)
  store i32 %73, i32* %19, align 4
  %74 = load i32, i32* %19, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %188

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77, %63
  %79 = load i32 (i8*, %struct.dentry*)*, i32 (i8*, %struct.dentry*)** %12, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = load %struct.dentry*, %struct.dentry** %15, align 8
  %82 = call i32 %79(i8* %80, %struct.dentry* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %78
  %85 = load i32, i32* @EACCES, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %19, align 4
  br label %188

87:                                               ; preds = %78
  %88 = load %struct.dentry*, %struct.dentry** %15, align 8
  store %struct.dentry* %88, %struct.dentry** %7, align 8
  store i32 1, i32* %20, align 4
  br label %193

89:                                               ; preds = %55
  %90 = load %struct.dentry*, %struct.dentry** %15, align 8
  %91 = load i32 (i8*, %struct.dentry*)*, i32 (i8*, %struct.dentry*)** %12, align 8
  %92 = load i8*, i8** %13, align 8
  %93 = call %struct.dentry* @find_acceptable_alias(%struct.dentry* %90, i32 (i8*, %struct.dentry*)* %91, i8* %92)
  store %struct.dentry* %93, %struct.dentry** %16, align 8
  %94 = load %struct.dentry*, %struct.dentry** %16, align 8
  %95 = icmp ne %struct.dentry* %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = load %struct.dentry*, %struct.dentry** %16, align 8
  store %struct.dentry* %97, %struct.dentry** %7, align 8
  store i32 1, i32* %20, align 4
  br label %193

98:                                               ; preds = %89
  %99 = load i32, i32* @ESTALE, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %19, align 4
  %101 = load %struct.export_operations*, %struct.export_operations** %14, align 8
  %102 = getelementptr inbounds %struct.export_operations, %struct.export_operations* %101, i32 0, i32 0
  %103 = load %struct.dentry* (%struct.TYPE_5__*, %struct.fid*, i32, i32)*, %struct.dentry* (%struct.TYPE_5__*, %struct.fid*, i32, i32)** %102, align 8
  %104 = icmp ne %struct.dentry* (%struct.TYPE_5__*, %struct.fid*, i32, i32)* %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %98
  br label %188

106:                                              ; preds = %98
  %107 = load %struct.export_operations*, %struct.export_operations** %14, align 8
  %108 = getelementptr inbounds %struct.export_operations, %struct.export_operations* %107, i32 0, i32 0
  %109 = load %struct.dentry* (%struct.TYPE_5__*, %struct.fid*, i32, i32)*, %struct.dentry* (%struct.TYPE_5__*, %struct.fid*, i32, i32)** %108, align 8
  %110 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %111 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %110, i32 0, i32 0
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = load %struct.fid*, %struct.fid** %9, align 8
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %11, align 4
  %116 = call %struct.dentry* %109(%struct.TYPE_5__* %112, %struct.fid* %113, i32 %114, i32 %115)
  store %struct.dentry* %116, %struct.dentry** %21, align 8
  %117 = load %struct.dentry*, %struct.dentry** %21, align 8
  %118 = icmp ne %struct.dentry* %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %106
  br label %188

120:                                              ; preds = %106
  %121 = load %struct.dentry*, %struct.dentry** %21, align 8
  %122 = call i32 @PTR_ERR(%struct.dentry* %121)
  store i32 %122, i32* %19, align 4
  %123 = load %struct.dentry*, %struct.dentry** %21, align 8
  %124 = call i64 @IS_ERR(%struct.dentry* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  br label %188

127:                                              ; preds = %120
  %128 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %129 = load %struct.dentry*, %struct.dentry** %21, align 8
  %130 = call i32 @reconnect_path(%struct.vfsmount* %128, %struct.dentry* %129, i8* %32)
  store i32 %130, i32* %19, align 4
  %131 = load i32, i32* %19, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %127
  %134 = load %struct.dentry*, %struct.dentry** %21, align 8
  %135 = call i32 @dput(%struct.dentry* %134)
  br label %188

136:                                              ; preds = %127
  %137 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %138 = load %struct.dentry*, %struct.dentry** %21, align 8
  %139 = load %struct.dentry*, %struct.dentry** %15, align 8
  %140 = call i32 @exportfs_get_name(%struct.vfsmount* %137, %struct.dentry* %138, i8* %32, %struct.dentry* %139)
  store i32 %140, i32* %19, align 4
  %141 = load i32, i32* %19, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %174, label %143

143:                                              ; preds = %136
  %144 = load %struct.dentry*, %struct.dentry** %21, align 8
  %145 = getelementptr inbounds %struct.dentry, %struct.dentry* %144, i32 0, i32 1
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = call i32 @mutex_lock(i32* %147)
  %149 = load %struct.dentry*, %struct.dentry** %21, align 8
  %150 = call i32 @strlen(i8* %32)
  %151 = call %struct.dentry* @lookup_one_len(i8* %32, %struct.dentry* %149, i32 %150)
  store %struct.dentry* %151, %struct.dentry** %22, align 8
  %152 = load %struct.dentry*, %struct.dentry** %21, align 8
  %153 = getelementptr inbounds %struct.dentry, %struct.dentry* %152, i32 0, i32 1
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = call i32 @mutex_unlock(i32* %155)
  %157 = load %struct.dentry*, %struct.dentry** %22, align 8
  %158 = call i64 @IS_ERR(%struct.dentry* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %173, label %160

160:                                              ; preds = %143
  %161 = load %struct.dentry*, %struct.dentry** %22, align 8
  %162 = getelementptr inbounds %struct.dentry, %struct.dentry* %161, i32 0, i32 1
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = icmp ne %struct.TYPE_4__* %163, null
  br i1 %164, label %165, label %169

165:                                              ; preds = %160
  %166 = load %struct.dentry*, %struct.dentry** %15, align 8
  %167 = call i32 @dput(%struct.dentry* %166)
  %168 = load %struct.dentry*, %struct.dentry** %22, align 8
  store %struct.dentry* %168, %struct.dentry** %15, align 8
  br label %172

169:                                              ; preds = %160
  %170 = load %struct.dentry*, %struct.dentry** %22, align 8
  %171 = call i32 @dput(%struct.dentry* %170)
  br label %172

172:                                              ; preds = %169, %165
  br label %173

173:                                              ; preds = %172, %143
  br label %174

174:                                              ; preds = %173, %136
  %175 = load %struct.dentry*, %struct.dentry** %21, align 8
  %176 = call i32 @dput(%struct.dentry* %175)
  %177 = load %struct.dentry*, %struct.dentry** %15, align 8
  %178 = load i32 (i8*, %struct.dentry*)*, i32 (i8*, %struct.dentry*)** %12, align 8
  %179 = load i8*, i8** %13, align 8
  %180 = call %struct.dentry* @find_acceptable_alias(%struct.dentry* %177, i32 (i8*, %struct.dentry*)* %178, i8* %179)
  store %struct.dentry* %180, %struct.dentry** %16, align 8
  %181 = load %struct.dentry*, %struct.dentry** %16, align 8
  %182 = icmp ne %struct.dentry* %181, null
  br i1 %182, label %186, label %183

183:                                              ; preds = %174
  %184 = load i32, i32* @EACCES, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %19, align 4
  br label %188

186:                                              ; preds = %174
  %187 = load %struct.dentry*, %struct.dentry** %16, align 8
  store %struct.dentry* %187, %struct.dentry** %7, align 8
  store i32 1, i32* %20, align 4
  br label %193

188:                                              ; preds = %183, %133, %126, %119, %105, %84, %76
  %189 = load %struct.dentry*, %struct.dentry** %15, align 8
  %190 = call i32 @dput(%struct.dentry* %189)
  %191 = load i32, i32* %19, align 4
  %192 = call %struct.dentry* @ERR_PTR(i32 %191)
  store %struct.dentry* %192, %struct.dentry** %7, align 8
  store i32 1, i32* %20, align 4
  br label %193

193:                                              ; preds = %188, %186, %96, %87, %53
  %194 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %194)
  %195 = load %struct.dentry*, %struct.dentry** %7, align 8
  ret %struct.dentry* %195
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #2

declare dso_local i64 @IS_ERR(%struct.dentry*) #2

declare dso_local i64 @S_ISDIR(i32) #2

declare dso_local i32 @reconnect_path(%struct.vfsmount*, %struct.dentry*, i8*) #2

declare dso_local %struct.dentry* @find_acceptable_alias(%struct.dentry*, i32 (i8*, %struct.dentry*)*, i8*) #2

declare dso_local i32 @PTR_ERR(%struct.dentry*) #2

declare dso_local i32 @dput(%struct.dentry*) #2

declare dso_local i32 @exportfs_get_name(%struct.vfsmount*, %struct.dentry*, i8*, %struct.dentry*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local %struct.dentry* @lookup_one_len(i8*, %struct.dentry*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
