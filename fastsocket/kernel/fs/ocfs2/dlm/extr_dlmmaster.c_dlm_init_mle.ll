; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_init_mle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_init_mle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_master_list_entry = type { i32, i32, i32, i32, i32, i32, %struct.dlm_lock_resource*, i64, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.dlm_ctxt* }
%struct.dlm_ctxt = type { i8*, i32, i32*, i32*, i32 }
%struct.dlm_lock_resource = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32, i32 }

@O2NM_MAX_NODES = common dso_local global i8* null, align 8
@DLM_MLE_BLOCK = common dso_local global i32 0, align 4
@DLM_MLE_MASTER = common dso_local global i32 0, align 4
@DLM_MLE_MIGRATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_master_list_entry*, i32, %struct.dlm_ctxt*, %struct.dlm_lock_resource*, i8*, i32)* @dlm_init_mle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlm_init_mle(%struct.dlm_master_list_entry* %0, i32 %1, %struct.dlm_ctxt* %2, %struct.dlm_lock_resource* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.dlm_master_list_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dlm_ctxt*, align 8
  %10 = alloca %struct.dlm_lock_resource*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.dlm_master_list_entry* %0, %struct.dlm_master_list_entry** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.dlm_ctxt* %2, %struct.dlm_ctxt** %9, align 8
  store %struct.dlm_lock_resource* %3, %struct.dlm_lock_resource** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %9, align 8
  %14 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %13, i32 0, i32 4
  %15 = call i32 @assert_spin_locked(i32* %14)
  %16 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %9, align 8
  %17 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %18 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %17, i32 0, i32 18
  store %struct.dlm_ctxt* %16, %struct.dlm_ctxt** %18, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %21 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %23 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %22, i32 0, i32 17
  %24 = call i32 @INIT_HLIST_NODE(i32* %23)
  %25 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %26 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %25, i32 0, i32 16
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %29 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %28, i32 0, i32 15
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @memset(i32 %30, i32 0, i32 4)
  %32 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %33 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %32, i32 0, i32 14
  %34 = call i32 @spin_lock_init(i32* %33)
  %35 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %36 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %35, i32 0, i32 13
  %37 = call i32 @init_waitqueue_head(i32* %36)
  %38 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %39 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %38, i32 0, i32 12
  %40 = call i32 @atomic_set(i32* %39, i32 0)
  %41 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %42 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %41, i32 0, i32 11
  %43 = call i32 @kref_init(i32* %42)
  %44 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %45 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %44, i32 0, i32 10
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @memset(i32 %46, i32 0, i32 4)
  %48 = load i8*, i8** @O2NM_MAX_NODES, align 8
  %49 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %50 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %49, i32 0, i32 9
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** @O2NM_MAX_NODES, align 8
  %52 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %53 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %52, i32 0, i32 8
  store i8* %51, i8** %53, align 8
  %54 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %55 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %54, i32 0, i32 7
  store i64 0, i64* %55, align 8
  %56 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %57 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @DLM_MLE_BLOCK, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %6
  %62 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %63 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @DLM_MLE_MASTER, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %69 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @DLM_MLE_MIGRATION, align 4
  %72 = icmp ne i32 %70, %71
  br label %73

73:                                               ; preds = %67, %61, %6
  %74 = phi i1 [ false, %61 ], [ false, %6 ], [ %72, %67 ]
  %75 = zext i1 %74 to i32
  %76 = call i32 @BUG_ON(i32 %75)
  %77 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %78 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @DLM_MLE_MASTER, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %115

82:                                               ; preds = %73
  %83 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %84 = icmp ne %struct.dlm_lock_resource* %83, null
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = call i32 @BUG_ON(i32 %86)
  %88 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %89 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %90 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %89, i32 0, i32 6
  store %struct.dlm_lock_resource* %88, %struct.dlm_lock_resource** %90, align 8
  %91 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %92 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %95 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %99 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @memcpy(i32 %93, i8* %97, i32 %101)
  %103 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %104 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %108 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %110 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %114 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %113, i32 0, i32 4
  store i32 %112, i32* %114, align 8
  br label %137

115:                                              ; preds = %73
  %116 = load i8*, i8** %11, align 8
  %117 = icmp ne i8* %116, null
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i32
  %120 = call i32 @BUG_ON(i32 %119)
  %121 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %122 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %121, i32 0, i32 6
  store %struct.dlm_lock_resource* null, %struct.dlm_lock_resource** %122, align 8
  %123 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %124 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = load i8*, i8** %11, align 8
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @memcpy(i32 %125, i8* %126, i32 %127)
  %129 = load i32, i32* %12, align 4
  %130 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %131 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = load i8*, i8** %11, align 8
  %133 = load i32, i32* %12, align 4
  %134 = call i32 @dlm_lockid_hash(i8* %132, i32 %133)
  %135 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %136 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %135, i32 0, i32 4
  store i32 %134, i32* %136, align 8
  br label %137

137:                                              ; preds = %115, %82
  %138 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %9, align 8
  %139 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %138, i32 0, i32 3
  %140 = load i32*, i32** %139, align 8
  %141 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %142 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %140, i64 %144
  %146 = call i32 @atomic_inc(i32* %145)
  %147 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %9, align 8
  %148 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %151 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %149, i64 %153
  %155 = call i32 @atomic_inc(i32* %154)
  %156 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %157 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %9, align 8
  %160 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @memcpy(i32 %158, i8* %161, i32 4)
  %163 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %164 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %9, align 8
  %167 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @memcpy(i32 %165, i8* %168, i32 4)
  %170 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %9, align 8
  %171 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %174 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @clear_bit(i32 %172, i32 %175)
  %177 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %9, align 8
  %178 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %181 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @clear_bit(i32 %179, i32 %182)
  %184 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %9, align 8
  %185 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %186 = call i32 @__dlm_mle_attach_hb_events(%struct.dlm_ctxt* %184, %struct.dlm_master_list_entry* %185)
  ret void
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @dlm_lockid_hash(i8*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @__dlm_mle_attach_hb_events(%struct.dlm_ctxt*, %struct.dlm_master_list_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
