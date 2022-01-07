; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_read_rindex_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_read_rindex_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32 }
%struct.file_ra_state = type { i32 }
%struct.gfs2_sbd = type { i32, i64, i32 }
%struct.gfs2_rindex = type { i32, i32, i32, i32, i32 }
%struct.gfs2_rgrpd = type { i64, i32, %struct.TYPE_3__*, i32, i8*, i32, i8*, i8*, i8*, %struct.gfs2_sbd* }
%struct.TYPE_3__ = type { %struct.gfs2_rgrpd* }

@gfs2_rgrpd_cachep = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gfs2_rgrp_glops = common dso_local global i32 0, align 4
@CREATE = common dso_local global i32 0, align 4
@GFS2_RDF_UPTODATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, %struct.file_ra_state*)* @read_rindex_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_rindex_entry(%struct.gfs2_inode* %0, %struct.file_ra_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gfs2_inode*, align 8
  %5 = alloca %struct.file_ra_state*, align 8
  %6 = alloca %struct.gfs2_sbd*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.gfs2_rindex, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.gfs2_rgrpd*, align 8
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %4, align 8
  store %struct.file_ra_state* %1, %struct.file_ra_state** %5, align 8
  %11 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %12 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %11, i32 0, i32 0
  %13 = call %struct.gfs2_sbd* @GFS2_SB(i32* %12)
  store %struct.gfs2_sbd* %13, %struct.gfs2_sbd** %6, align 8
  %14 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %15 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 20
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %21 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %20, i32 0, i32 0
  %22 = call i64 @i_size_read(i32* %21)
  %23 = icmp sge i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %152

25:                                               ; preds = %2
  %26 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %27 = load %struct.file_ra_state*, %struct.file_ra_state** %5, align 8
  %28 = bitcast %struct.gfs2_rindex* %8 to i8*
  %29 = call i32 @gfs2_internal_read(%struct.gfs2_inode* %26, %struct.file_ra_state* %27, i8* %28, i64* %7, i32 20)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp ne i64 %31, 20
  br i1 %32, label %33, label %41

33:                                               ; preds = %25
  %34 = load i32, i32* %9, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %39

37:                                               ; preds = %33
  %38 = load i32, i32* %9, align 4
  br label %39

39:                                               ; preds = %37, %36
  %40 = phi i32 [ 1, %36 ], [ %38, %37 ]
  store i32 %40, i32* %3, align 4
  br label %152

41:                                               ; preds = %25
  %42 = load i32, i32* @gfs2_rgrpd_cachep, align 4
  %43 = load i32, i32* @GFP_NOFS, align 4
  %44 = call %struct.gfs2_rgrpd* @kmem_cache_zalloc(i32 %42, i32 %43)
  store %struct.gfs2_rgrpd* %44, %struct.gfs2_rgrpd** %10, align 8
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %9, align 4
  %47 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %10, align 8
  %48 = icmp ne %struct.gfs2_rgrpd* %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %41
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %3, align 4
  br label %152

51:                                               ; preds = %41
  %52 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %53 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %10, align 8
  %54 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %53, i32 0, i32 9
  store %struct.gfs2_sbd* %52, %struct.gfs2_sbd** %54, align 8
  %55 = getelementptr inbounds %struct.gfs2_rindex, %struct.gfs2_rindex* %8, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @be64_to_cpu(i32 %56)
  %58 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %10, align 8
  %59 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %58, i32 0, i32 4
  store i8* %57, i8** %59, align 8
  %60 = getelementptr inbounds %struct.gfs2_rindex, %struct.gfs2_rindex* %8, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @be32_to_cpu(i32 %61)
  %63 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %10, align 8
  %64 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %63, i32 0, i32 8
  store i8* %62, i8** %64, align 8
  %65 = getelementptr inbounds %struct.gfs2_rindex, %struct.gfs2_rindex* %8, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @be64_to_cpu(i32 %66)
  %68 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %10, align 8
  %69 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %68, i32 0, i32 7
  store i8* %67, i8** %69, align 8
  %70 = getelementptr inbounds %struct.gfs2_rindex, %struct.gfs2_rindex* %8, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @be32_to_cpu(i32 %71)
  %73 = ptrtoint i8* %72 to i64
  %74 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %10, align 8
  %75 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = getelementptr inbounds %struct.gfs2_rindex, %struct.gfs2_rindex* %8, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @be32_to_cpu(i32 %77)
  %79 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %10, align 8
  %80 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %79, i32 0, i32 6
  store i8* %78, i8** %80, align 8
  %81 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %10, align 8
  %82 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %81, i32 0, i32 5
  %83 = call i32 @spin_lock_init(i32* %82)
  %84 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %10, align 8
  %85 = call i32 @compute_bitstructs(%struct.gfs2_rgrpd* %84)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %51
  br label %143

89:                                               ; preds = %51
  %90 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %91 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %10, align 8
  %92 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %91, i32 0, i32 4
  %93 = load i8*, i8** %92, align 8
  %94 = load i32, i32* @CREATE, align 4
  %95 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %10, align 8
  %96 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %95, i32 0, i32 2
  %97 = call i32 @gfs2_glock_get(%struct.gfs2_sbd* %90, i8* %93, i32* @gfs2_rgrp_glops, i32 %94, %struct.TYPE_3__** %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %89
  br label %143

101:                                              ; preds = %89
  %102 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %10, align 8
  %103 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %10, align 8
  %104 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %103, i32 0, i32 2
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  store %struct.gfs2_rgrpd* %102, %struct.gfs2_rgrpd** %106, align 8
  %107 = load i32, i32* @GFS2_RDF_UPTODATE, align 4
  %108 = xor i32 %107, -1
  %109 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %10, align 8
  %110 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = and i32 %111, %108
  store i32 %112, i32* %110, align 8
  %113 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %10, align 8
  %114 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %117 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp sgt i64 %115, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %101
  %121 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %10, align 8
  %122 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %125 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %124, i32 0, i32 1
  store i64 %123, i64* %125, align 8
  br label %126

126:                                              ; preds = %120, %101
  %127 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %128 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %127, i32 0, i32 2
  %129 = call i32 @spin_lock(i32* %128)
  %130 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %10, align 8
  %131 = call i32 @rgd_insert(%struct.gfs2_rgrpd* %130)
  store i32 %131, i32* %9, align 4
  %132 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %133 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %132, i32 0, i32 2
  %134 = call i32 @spin_unlock(i32* %133)
  %135 = load i32, i32* %9, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %126
  store i32 0, i32* %3, align 4
  br label %152

138:                                              ; preds = %126
  store i32 0, i32* %9, align 4
  %139 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %10, align 8
  %140 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %139, i32 0, i32 2
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = call i32 @gfs2_glock_put(%struct.TYPE_3__* %141)
  br label %143

143:                                              ; preds = %138, %100, %88
  %144 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %10, align 8
  %145 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @kfree(i32 %146)
  %148 = load i32, i32* @gfs2_rgrpd_cachep, align 4
  %149 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %10, align 8
  %150 = call i32 @kmem_cache_free(i32 %148, %struct.gfs2_rgrpd* %149)
  %151 = load i32, i32* %9, align 4
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %143, %137, %49, %39, %24
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32*) #1

declare dso_local i64 @i_size_read(i32*) #1

declare dso_local i32 @gfs2_internal_read(%struct.gfs2_inode*, %struct.file_ra_state*, i8*, i64*, i32) #1

declare dso_local %struct.gfs2_rgrpd* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i8* @be64_to_cpu(i32) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @compute_bitstructs(%struct.gfs2_rgrpd*) #1

declare dso_local i32 @gfs2_glock_get(%struct.gfs2_sbd*, i8*, i32*, i32, %struct.TYPE_3__**) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rgd_insert(%struct.gfs2_rgrpd*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @gfs2_glock_put(%struct.TYPE_3__*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.gfs2_rgrpd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
