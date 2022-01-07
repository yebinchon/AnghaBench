; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_prime_dcache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_prime_dcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, i32, %struct.dentry* }
%struct.nfs_entry = type { i32, i8*, i32, i32 }
%struct.qstr = type { i32, i8*, i32 }
%struct.inode = type { i32, i32, %struct.inode* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dentry*, %struct.nfs_entry*)* @nfs_prime_dcache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_prime_dcache(%struct.dentry* %0, %struct.nfs_entry* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.nfs_entry*, align 8
  %5 = alloca %struct.qstr, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.nfs_entry* %1, %struct.nfs_entry** %4, align 8
  %10 = getelementptr inbounds %struct.qstr, %struct.qstr* %5, i32 0, i32 0
  %11 = load %struct.nfs_entry*, %struct.nfs_entry** %4, align 8
  %12 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %10, align 8
  %14 = getelementptr inbounds %struct.qstr, %struct.qstr* %5, i32 0, i32 1
  %15 = load %struct.nfs_entry*, %struct.nfs_entry** %4, align 8
  %16 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %14, align 8
  %18 = getelementptr inbounds %struct.qstr, %struct.qstr* %5, i32 0, i32 2
  store i32 0, i32* %18, align 8
  %19 = load %struct.dentry*, %struct.dentry** %3, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 2
  %21 = load %struct.dentry*, %struct.dentry** %20, align 8
  %22 = bitcast %struct.dentry* %21 to %struct.inode*
  store %struct.inode* %22, %struct.inode** %8, align 8
  %23 = getelementptr inbounds %struct.qstr, %struct.qstr* %5, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 46
  br i1 %28, label %29, label %47

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.qstr, %struct.qstr* %5, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %152

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.qstr, %struct.qstr* %5, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.qstr, %struct.qstr* %5, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 46
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %152

46:                                               ; preds = %38, %34
  br label %47

47:                                               ; preds = %46, %2
  %48 = getelementptr inbounds %struct.qstr, %struct.qstr* %5, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds %struct.qstr, %struct.qstr* %5, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @full_name_hash(i8* %49, i32 %51)
  %53 = getelementptr inbounds %struct.qstr, %struct.qstr* %5, i32 0, i32 2
  store i32 %52, i32* %53, align 8
  %54 = load %struct.dentry*, %struct.dentry** %3, align 8
  %55 = bitcast %struct.dentry* %54 to %struct.inode*
  %56 = call %struct.inode* @d_lookup(%struct.inode* %55, %struct.qstr* %5)
  %57 = bitcast %struct.inode* %56 to %struct.dentry*
  store %struct.dentry* %57, %struct.dentry** %6, align 8
  %58 = load %struct.dentry*, %struct.dentry** %6, align 8
  %59 = icmp ne %struct.dentry* %58, null
  br i1 %59, label %60, label %88

60:                                               ; preds = %47
  %61 = load %struct.dentry*, %struct.dentry** %6, align 8
  %62 = bitcast %struct.dentry* %61 to %struct.inode*
  %63 = load %struct.nfs_entry*, %struct.nfs_entry** %4, align 8
  %64 = call i64 @nfs_same_file(%struct.inode* %62, %struct.nfs_entry* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %60
  %67 = load %struct.dentry*, %struct.dentry** %6, align 8
  %68 = bitcast %struct.dentry* %67 to %struct.inode*
  %69 = load %struct.inode*, %struct.inode** %8, align 8
  %70 = call i32 @nfs_save_change_attribute(%struct.inode* %69)
  %71 = call i32 @nfs_set_verifier(%struct.inode* %68, i32 %70)
  %72 = load %struct.dentry*, %struct.dentry** %6, align 8
  %73 = getelementptr inbounds %struct.dentry, %struct.dentry* %72, i32 0, i32 2
  %74 = load %struct.dentry*, %struct.dentry** %73, align 8
  %75 = bitcast %struct.dentry* %74 to %struct.inode*
  %76 = load %struct.nfs_entry*, %struct.nfs_entry** %4, align 8
  %77 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @nfs_refresh_inode(%struct.inode* %75, i32 %78)
  br label %148

80:                                               ; preds = %60
  %81 = load %struct.dentry*, %struct.dentry** %6, align 8
  %82 = bitcast %struct.dentry* %81 to %struct.inode*
  %83 = call i32 @d_drop(%struct.inode* %82)
  %84 = load %struct.dentry*, %struct.dentry** %6, align 8
  %85 = bitcast %struct.dentry* %84 to %struct.inode*
  %86 = call i32 @dput(%struct.inode* %85)
  br label %87

87:                                               ; preds = %80
  br label %88

88:                                               ; preds = %87, %47
  %89 = load %struct.dentry*, %struct.dentry** %3, align 8
  %90 = bitcast %struct.dentry* %89 to %struct.inode*
  %91 = call %struct.inode* @d_alloc(%struct.inode* %90, %struct.qstr* %5)
  %92 = bitcast %struct.inode* %91 to %struct.dentry*
  store %struct.dentry* %92, %struct.dentry** %6, align 8
  %93 = load %struct.dentry*, %struct.dentry** %6, align 8
  %94 = icmp eq %struct.dentry* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %152

96:                                               ; preds = %88
  %97 = load %struct.inode*, %struct.inode** %8, align 8
  %98 = call %struct.TYPE_2__* @NFS_PROTO(%struct.inode* %97)
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.dentry*, %struct.dentry** %6, align 8
  %102 = getelementptr inbounds %struct.dentry, %struct.dentry* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load %struct.dentry*, %struct.dentry** %6, align 8
  %104 = getelementptr inbounds %struct.dentry, %struct.dentry* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.nfs_entry*, %struct.nfs_entry** %4, align 8
  %107 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.nfs_entry*, %struct.nfs_entry** %4, align 8
  %110 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call %struct.inode* @nfs_fhget(i32 %105, i32 %108, i32 %111)
  store %struct.inode* %112, %struct.inode** %9, align 8
  %113 = load %struct.inode*, %struct.inode** %9, align 8
  %114 = call i64 @IS_ERR(%struct.inode* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %96
  br label %148

117:                                              ; preds = %96
  %118 = load %struct.dentry*, %struct.dentry** %6, align 8
  %119 = bitcast %struct.dentry* %118 to %struct.inode*
  %120 = load %struct.inode*, %struct.inode** %9, align 8
  %121 = call %struct.inode* @d_materialise_unique(%struct.inode* %119, %struct.inode* %120)
  %122 = bitcast %struct.inode* %121 to %struct.dentry*
  store %struct.dentry* %122, %struct.dentry** %7, align 8
  %123 = load %struct.dentry*, %struct.dentry** %7, align 8
  %124 = bitcast %struct.dentry* %123 to %struct.inode*
  %125 = call i64 @IS_ERR(%struct.inode* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %117
  br label %148

128:                                              ; preds = %117
  %129 = load %struct.dentry*, %struct.dentry** %7, align 8
  %130 = icmp ne %struct.dentry* %129, null
  br i1 %130, label %131, label %140

131:                                              ; preds = %128
  %132 = load %struct.dentry*, %struct.dentry** %7, align 8
  %133 = bitcast %struct.dentry* %132 to %struct.inode*
  %134 = load %struct.inode*, %struct.inode** %8, align 8
  %135 = call i32 @nfs_save_change_attribute(%struct.inode* %134)
  %136 = call i32 @nfs_set_verifier(%struct.inode* %133, i32 %135)
  %137 = load %struct.dentry*, %struct.dentry** %7, align 8
  %138 = bitcast %struct.dentry* %137 to %struct.inode*
  %139 = call i32 @dput(%struct.inode* %138)
  br label %146

140:                                              ; preds = %128
  %141 = load %struct.dentry*, %struct.dentry** %6, align 8
  %142 = bitcast %struct.dentry* %141 to %struct.inode*
  %143 = load %struct.inode*, %struct.inode** %8, align 8
  %144 = call i32 @nfs_save_change_attribute(%struct.inode* %143)
  %145 = call i32 @nfs_set_verifier(%struct.inode* %142, i32 %144)
  br label %146

146:                                              ; preds = %140, %131
  br label %147

147:                                              ; preds = %146
  br label %148

148:                                              ; preds = %147, %127, %116, %66
  %149 = load %struct.dentry*, %struct.dentry** %6, align 8
  %150 = bitcast %struct.dentry* %149 to %struct.inode*
  %151 = call i32 @dput(%struct.inode* %150)
  br label %152

152:                                              ; preds = %148, %95, %45, %33
  ret void
}

declare dso_local i32 @full_name_hash(i8*, i32) #1

declare dso_local %struct.inode* @d_lookup(%struct.inode*, %struct.qstr*) #1

declare dso_local i64 @nfs_same_file(%struct.inode*, %struct.nfs_entry*) #1

declare dso_local i32 @nfs_set_verifier(%struct.inode*, i32) #1

declare dso_local i32 @nfs_save_change_attribute(%struct.inode*) #1

declare dso_local i32 @nfs_refresh_inode(%struct.inode*, i32) #1

declare dso_local i32 @d_drop(%struct.inode*) #1

declare dso_local i32 @dput(%struct.inode*) #1

declare dso_local %struct.inode* @d_alloc(%struct.inode*, %struct.qstr*) #1

declare dso_local %struct.TYPE_2__* @NFS_PROTO(%struct.inode*) #1

declare dso_local %struct.inode* @nfs_fhget(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.inode* @d_materialise_unique(%struct.inode*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
