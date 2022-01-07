; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_fuse_dentry_revalidate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_fuse_dentry_revalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, %struct.inode* }
%struct.inode = type { i32 }
%struct.nameidata = type { i32 }
%struct.fuse_entry_out = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.fuse_conn = type { i32 }
%struct.fuse_req = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.fuse_inode = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.nameidata*)* @fuse_dentry_revalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_dentry_revalidate(%struct.dentry* %0, %struct.nameidata* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.nameidata*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fuse_entry_out, align 4
  %9 = alloca %struct.fuse_conn*, align 8
  %10 = alloca %struct.fuse_req*, align 8
  %11 = alloca %struct.fuse_req*, align 8
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.fuse_inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.nameidata* %1, %struct.nameidata** %4, align 8
  %15 = load %struct.dentry*, %struct.dentry** %3, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 1
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %5, align 8
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = icmp ne %struct.inode* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = call i64 @is_bad_inode(%struct.inode* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %151

25:                                               ; preds = %20, %2
  %26 = load %struct.dentry*, %struct.dentry** %3, align 8
  %27 = call i64 @fuse_dentry_time(%struct.dentry* %26)
  %28 = call i64 (...) @get_jiffies_64()
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %147

30:                                               ; preds = %25
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = icmp ne %struct.inode* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  br label %151

34:                                               ; preds = %30
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %35)
  store %struct.fuse_conn* %36, %struct.fuse_conn** %9, align 8
  %37 = load %struct.fuse_conn*, %struct.fuse_conn** %9, align 8
  %38 = call %struct.fuse_req* @fuse_get_req_nopages(%struct.fuse_conn* %37)
  store %struct.fuse_req* %38, %struct.fuse_req** %10, align 8
  %39 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %40 = call i32 @PTR_ERR(%struct.fuse_req* %39)
  store i32 %40, i32* %6, align 4
  %41 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %42 = call i64 @IS_ERR(%struct.fuse_req* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %149

45:                                               ; preds = %34
  %46 = load %struct.fuse_conn*, %struct.fuse_conn** %9, align 8
  %47 = call %struct.fuse_req* @fuse_get_req_nopages(%struct.fuse_conn* %46)
  store %struct.fuse_req* %47, %struct.fuse_req** %11, align 8
  %48 = load %struct.fuse_req*, %struct.fuse_req** %11, align 8
  %49 = call i64 @IS_ERR(%struct.fuse_req* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load %struct.fuse_conn*, %struct.fuse_conn** %9, align 8
  %53 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %54 = call i32 @fuse_put_request(%struct.fuse_conn* %52, %struct.fuse_req* %53)
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %149

57:                                               ; preds = %45
  %58 = load %struct.fuse_conn*, %struct.fuse_conn** %9, align 8
  %59 = call i32 @fuse_get_attr_version(%struct.fuse_conn* %58)
  store i32 %59, i32* %13, align 4
  %60 = load %struct.dentry*, %struct.dentry** %3, align 8
  %61 = call %struct.dentry* @dget_parent(%struct.dentry* %60)
  store %struct.dentry* %61, %struct.dentry** %12, align 8
  %62 = load %struct.fuse_conn*, %struct.fuse_conn** %9, align 8
  %63 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %64 = load %struct.dentry*, %struct.dentry** %12, align 8
  %65 = getelementptr inbounds %struct.dentry, %struct.dentry* %64, i32 0, i32 1
  %66 = load %struct.inode*, %struct.inode** %65, align 8
  %67 = call i32 @get_node_id(%struct.inode* %66)
  %68 = load %struct.dentry*, %struct.dentry** %3, align 8
  %69 = getelementptr inbounds %struct.dentry, %struct.dentry* %68, i32 0, i32 0
  %70 = call i32 @fuse_lookup_init(%struct.fuse_conn* %62, %struct.fuse_req* %63, i32 %67, i32* %69, %struct.fuse_entry_out* %8)
  %71 = load %struct.fuse_conn*, %struct.fuse_conn** %9, align 8
  %72 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %73 = call i32 @fuse_request_send(%struct.fuse_conn* %71, %struct.fuse_req* %72)
  %74 = load %struct.dentry*, %struct.dentry** %12, align 8
  %75 = call i32 @dput(%struct.dentry* %74)
  %76 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %77 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %7, align 4
  %81 = load %struct.fuse_conn*, %struct.fuse_conn** %9, align 8
  %82 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %83 = call i32 @fuse_put_request(%struct.fuse_conn* %81, %struct.fuse_req* %82)
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %57
  %87 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %8, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* @ENOENT, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %90, %86, %57
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %121, label %96

96:                                               ; preds = %93
  %97 = load %struct.inode*, %struct.inode** %5, align 8
  %98 = call %struct.fuse_inode* @get_fuse_inode(%struct.inode* %97)
  store %struct.fuse_inode* %98, %struct.fuse_inode** %14, align 8
  %99 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %8, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.inode*, %struct.inode** %5, align 8
  %102 = call i32 @get_node_id(%struct.inode* %101)
  %103 = icmp ne i32 %100, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %96
  %105 = load %struct.fuse_conn*, %struct.fuse_conn** %9, align 8
  %106 = load %struct.fuse_req*, %struct.fuse_req** %11, align 8
  %107 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %8, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @fuse_send_forget(%struct.fuse_conn* %105, %struct.fuse_req* %106, i32 %108, i32 1)
  br label %151

110:                                              ; preds = %96
  %111 = load %struct.fuse_conn*, %struct.fuse_conn** %9, align 8
  %112 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %111, i32 0, i32 0
  %113 = call i32 @spin_lock(i32* %112)
  %114 = load %struct.fuse_inode*, %struct.fuse_inode** %14, align 8
  %115 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 4
  %118 = load %struct.fuse_conn*, %struct.fuse_conn** %9, align 8
  %119 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %118, i32 0, i32 0
  %120 = call i32 @spin_unlock(i32* %119)
  br label %121

121:                                              ; preds = %110, %93
  %122 = load %struct.fuse_conn*, %struct.fuse_conn** %9, align 8
  %123 = load %struct.fuse_req*, %struct.fuse_req** %11, align 8
  %124 = call i32 @fuse_put_request(%struct.fuse_conn* %122, %struct.fuse_req* %123)
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %138, label %127

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %8, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.inode*, %struct.inode** %5, align 8
  %132 = getelementptr inbounds %struct.inode, %struct.inode* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = xor i32 %130, %133
  %135 = load i32, i32* @S_IFMT, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %127, %121
  br label %151

139:                                              ; preds = %127
  %140 = load %struct.inode*, %struct.inode** %5, align 8
  %141 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %8, i32 0, i32 0
  %142 = call i32 @entry_attr_timeout(%struct.fuse_entry_out* %8)
  %143 = load i32, i32* %13, align 4
  %144 = call i32 @fuse_change_attributes(%struct.inode* %140, %struct.TYPE_6__* %141, i32 %142, i32 %143)
  %145 = load %struct.dentry*, %struct.dentry** %3, align 8
  %146 = call i32 @fuse_change_entry_timeout(%struct.dentry* %145, %struct.fuse_entry_out* %8)
  br label %147

147:                                              ; preds = %139, %25
  br label %148

148:                                              ; preds = %147
  store i32 1, i32* %6, align 4
  br label %149

149:                                              ; preds = %168, %164, %148, %51, %44
  %150 = load i32, i32* %6, align 4
  ret i32 %150

151:                                              ; preds = %138, %104, %33, %24
  store i32 0, i32* %6, align 4
  %152 = load %struct.inode*, %struct.inode** %5, align 8
  %153 = icmp ne %struct.inode* %152, null
  br i1 %153, label %154, label %168

154:                                              ; preds = %151
  %155 = load %struct.inode*, %struct.inode** %5, align 8
  %156 = getelementptr inbounds %struct.inode, %struct.inode* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i64 @S_ISDIR(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %154
  %161 = load %struct.dentry*, %struct.dentry** %3, align 8
  %162 = call i64 @have_submounts(%struct.dentry* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %160
  store i32 1, i32* %6, align 4
  br label %149

165:                                              ; preds = %160
  %166 = load %struct.dentry*, %struct.dentry** %3, align 8
  %167 = call i32 @shrink_dcache_parent(%struct.dentry* %166)
  br label %168

168:                                              ; preds = %165, %154, %151
  %169 = load %struct.dentry*, %struct.dentry** %3, align 8
  %170 = call i32 @d_drop(%struct.dentry* %169)
  br label %149
}

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local i64 @fuse_dentry_time(%struct.dentry*) #1

declare dso_local i64 @get_jiffies_64(...) #1

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local %struct.fuse_req* @fuse_get_req_nopages(%struct.fuse_conn*) #1

declare dso_local i32 @PTR_ERR(%struct.fuse_req*) #1

declare dso_local i64 @IS_ERR(%struct.fuse_req*) #1

declare dso_local i32 @fuse_put_request(%struct.fuse_conn*, %struct.fuse_req*) #1

declare dso_local i32 @fuse_get_attr_version(%struct.fuse_conn*) #1

declare dso_local %struct.dentry* @dget_parent(%struct.dentry*) #1

declare dso_local i32 @fuse_lookup_init(%struct.fuse_conn*, %struct.fuse_req*, i32, i32*, %struct.fuse_entry_out*) #1

declare dso_local i32 @get_node_id(%struct.inode*) #1

declare dso_local i32 @fuse_request_send(%struct.fuse_conn*, %struct.fuse_req*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local %struct.fuse_inode* @get_fuse_inode(%struct.inode*) #1

declare dso_local i32 @fuse_send_forget(%struct.fuse_conn*, %struct.fuse_req*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @fuse_change_attributes(%struct.inode*, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @entry_attr_timeout(%struct.fuse_entry_out*) #1

declare dso_local i32 @fuse_change_entry_timeout(%struct.dentry*, %struct.fuse_entry_out*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @have_submounts(%struct.dentry*) #1

declare dso_local i32 @shrink_dcache_parent(%struct.dentry*) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
