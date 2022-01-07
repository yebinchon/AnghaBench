; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_txnmgr.c_txUpdateMap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_txnmgr.c_txUpdateMap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tblock = type { i32, i64, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { %struct.inode*, i32 }
%struct.inode = type { i32 }
%struct.tlock = type { i64, i32, %struct.metapage*, i32 }
%struct.metapage = type { i32, i64, i32 }
%struct.maplock = type { i32, i32 }
%struct.pxd_lock = type { i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.inode* }

@COMMIT_PMAP = common dso_local global i32 0, align 4
@COMMIT_PWMAP = common dso_local global i32 0, align 4
@tlckUPDATEMAP = common dso_local global i32 0, align 4
@tlckFREEPAGE = common dso_local global i32 0, align 4
@COMMIT_PAGE = common dso_local global i32 0, align 4
@mlckALLOC = common dso_local global i32 0, align 4
@tlckDIRECTORY = common dso_local global i32 0, align 4
@tblkGC_LAZY = common dso_local global i32 0, align 4
@COMMIT_CREATE = common dso_local global i32 0, align 4
@mlckALLOCPXD = common dso_local global i32 0, align 4
@COMMIT_DELETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tblock*)* @txUpdateMap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @txUpdateMap(%struct.tblock* %0) #0 {
  %2 = alloca %struct.tblock*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tlock*, align 8
  %7 = alloca %struct.maplock*, align 8
  %8 = alloca %struct.pxd_lock, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.metapage*, align 8
  store %struct.tblock* %0, %struct.tblock** %2, align 8
  store %struct.metapage* null, %struct.metapage** %12, align 8
  %13 = load %struct.tblock*, %struct.tblock** %2, align 8
  %14 = getelementptr inbounds %struct.tblock, %struct.tblock* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.TYPE_4__* @JFS_SBI(i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %4, align 8
  %19 = load %struct.tblock*, %struct.tblock** %2, align 8
  %20 = getelementptr inbounds %struct.tblock, %struct.tblock* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @COMMIT_PMAP, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @COMMIT_PMAP, align 4
  br label %29

27:                                               ; preds = %1
  %28 = load i32, i32* @COMMIT_PWMAP, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %9, align 4
  %31 = load %struct.tblock*, %struct.tblock** %2, align 8
  %32 = getelementptr inbounds %struct.tblock, %struct.tblock* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %5, align 8
  br label %34

34:                                               ; preds = %155, %29
  %35 = load i64, i64* %5, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %159

37:                                               ; preds = %34
  %38 = load i64, i64* %5, align 8
  %39 = call %struct.tlock* @lid_to_tlock(i64 %38)
  store %struct.tlock* %39, %struct.tlock** %6, align 8
  %40 = load %struct.tlock*, %struct.tlock** %6, align 8
  %41 = getelementptr inbounds %struct.tlock, %struct.tlock* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @tlckUPDATEMAP, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %155

47:                                               ; preds = %37
  %48 = load %struct.tlock*, %struct.tlock** %6, align 8
  %49 = getelementptr inbounds %struct.tlock, %struct.tlock* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @tlckFREEPAGE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %47
  %55 = load %struct.tlock*, %struct.tlock** %6, align 8
  %56 = getelementptr inbounds %struct.tlock, %struct.tlock* %55, i32 0, i32 2
  %57 = load %struct.metapage*, %struct.metapage** %56, align 8
  store %struct.metapage* %57, %struct.metapage** %12, align 8
  %58 = load %struct.metapage*, %struct.metapage** %12, align 8
  %59 = getelementptr inbounds %struct.metapage, %struct.metapage* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @COMMIT_PAGE, align 4
  %62 = and i32 %60, %61
  %63 = call i32 @ASSERT(i32 %62)
  %64 = load %struct.metapage*, %struct.metapage** %12, align 8
  %65 = call i32 @grab_metapage(%struct.metapage* %64)
  br label %66

66:                                               ; preds = %54, %47
  %67 = load %struct.tlock*, %struct.tlock** %6, align 8
  %68 = getelementptr inbounds %struct.tlock, %struct.tlock* %67, i32 0, i32 3
  %69 = bitcast i32* %68 to %struct.maplock*
  store %struct.maplock* %69, %struct.maplock** %7, align 8
  %70 = load %struct.maplock*, %struct.maplock** %7, align 8
  %71 = getelementptr inbounds %struct.maplock, %struct.maplock* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %73

73:                                               ; preds = %110, %66
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %115

77:                                               ; preds = %73
  %78 = load %struct.maplock*, %struct.maplock** %7, align 8
  %79 = getelementptr inbounds %struct.maplock, %struct.maplock* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @mlckALLOC, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %77
  %85 = load %struct.inode*, %struct.inode** %4, align 8
  %86 = load %struct.maplock*, %struct.maplock** %7, align 8
  %87 = load %struct.tblock*, %struct.tblock** %2, align 8
  %88 = call i32 @txAllocPMap(%struct.inode* %85, %struct.maplock* %86, %struct.tblock* %87)
  br label %109

89:                                               ; preds = %77
  %90 = load %struct.tlock*, %struct.tlock** %6, align 8
  %91 = getelementptr inbounds %struct.tlock, %struct.tlock* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @tlckDIRECTORY, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %89
  %97 = load %struct.inode*, %struct.inode** %4, align 8
  %98 = load %struct.maplock*, %struct.maplock** %7, align 8
  %99 = load %struct.tblock*, %struct.tblock** %2, align 8
  %100 = load i32, i32* @COMMIT_PWMAP, align 4
  %101 = call i32 @txFreeMap(%struct.inode* %97, %struct.maplock* %98, %struct.tblock* %99, i32 %100)
  br label %108

102:                                              ; preds = %89
  %103 = load %struct.inode*, %struct.inode** %4, align 8
  %104 = load %struct.maplock*, %struct.maplock** %7, align 8
  %105 = load %struct.tblock*, %struct.tblock** %2, align 8
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @txFreeMap(%struct.inode* %103, %struct.maplock* %104, %struct.tblock* %105, i32 %106)
  br label %108

108:                                              ; preds = %102, %96
  br label %109

109:                                              ; preds = %108, %84
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  %113 = load %struct.maplock*, %struct.maplock** %7, align 8
  %114 = getelementptr inbounds %struct.maplock, %struct.maplock* %113, i32 1
  store %struct.maplock* %114, %struct.maplock** %7, align 8
  br label %73

115:                                              ; preds = %73
  %116 = load %struct.tlock*, %struct.tlock** %6, align 8
  %117 = getelementptr inbounds %struct.tlock, %struct.tlock* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @tlckFREEPAGE, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %154

122:                                              ; preds = %115
  %123 = load %struct.tblock*, %struct.tblock** %2, align 8
  %124 = getelementptr inbounds %struct.tblock, %struct.tblock* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @tblkGC_LAZY, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %141, label %129

129:                                              ; preds = %122
  %130 = load %struct.metapage*, %struct.metapage** %12, align 8
  %131 = getelementptr inbounds %struct.metapage, %struct.metapage* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* %5, align 8
  %134 = icmp eq i64 %132, %133
  %135 = zext i1 %134 to i32
  %136 = call i32 @ASSERT(i32 %135)
  %137 = load %struct.tlock*, %struct.tlock** %6, align 8
  %138 = getelementptr inbounds %struct.tlock, %struct.tlock* %137, i32 0, i32 2
  %139 = load %struct.metapage*, %struct.metapage** %138, align 8
  %140 = getelementptr inbounds %struct.metapage, %struct.metapage* %139, i32 0, i32 1
  store i64 0, i64* %140, align 8
  br label %141

141:                                              ; preds = %129, %122
  %142 = load %struct.metapage*, %struct.metapage** %12, align 8
  %143 = getelementptr inbounds %struct.metapage, %struct.metapage* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = icmp eq i32 %144, 1
  %146 = zext i1 %145 to i32
  %147 = call i32 @assert(i32 %146)
  %148 = load %struct.metapage*, %struct.metapage** %12, align 8
  %149 = call i32 @metapage_homeok(%struct.metapage* %148)
  %150 = load %struct.metapage*, %struct.metapage** %12, align 8
  %151 = call i32 @discard_metapage(%struct.metapage* %150)
  %152 = load %struct.tlock*, %struct.tlock** %6, align 8
  %153 = getelementptr inbounds %struct.tlock, %struct.tlock* %152, i32 0, i32 2
  store %struct.metapage* null, %struct.metapage** %153, align 8
  br label %154

154:                                              ; preds = %141, %115
  br label %155

155:                                              ; preds = %154, %46
  %156 = load %struct.tlock*, %struct.tlock** %6, align 8
  %157 = getelementptr inbounds %struct.tlock, %struct.tlock* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  store i64 %158, i64* %5, align 8
  br label %34

159:                                              ; preds = %34
  %160 = load %struct.tblock*, %struct.tblock** %2, align 8
  %161 = getelementptr inbounds %struct.tblock, %struct.tblock* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @COMMIT_CREATE, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %185

166:                                              ; preds = %159
  %167 = load %struct.inode*, %struct.inode** %4, align 8
  %168 = load %struct.tblock*, %struct.tblock** %2, align 8
  %169 = getelementptr inbounds %struct.tblock, %struct.tblock* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.tblock*, %struct.tblock** %2, align 8
  %172 = call i32 @diUpdatePMap(%struct.inode* %167, i32 %170, i32 0, %struct.tblock* %171)
  %173 = load i32, i32* @mlckALLOCPXD, align 4
  %174 = getelementptr inbounds %struct.pxd_lock, %struct.pxd_lock* %8, i32 0, i32 2
  store i32 %173, i32* %174, align 4
  %175 = load %struct.tblock*, %struct.tblock** %2, align 8
  %176 = getelementptr inbounds %struct.tblock, %struct.tblock* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = getelementptr inbounds %struct.pxd_lock, %struct.pxd_lock* %8, i32 0, i32 1
  store i32 %178, i32* %179, align 4
  %180 = getelementptr inbounds %struct.pxd_lock, %struct.pxd_lock* %8, i32 0, i32 0
  store i32 1, i32* %180, align 4
  %181 = load %struct.inode*, %struct.inode** %4, align 8
  %182 = bitcast %struct.pxd_lock* %8 to %struct.maplock*
  %183 = load %struct.tblock*, %struct.tblock** %2, align 8
  %184 = call i32 @txAllocPMap(%struct.inode* %181, %struct.maplock* %182, %struct.tblock* %183)
  br label %206

185:                                              ; preds = %159
  %186 = load %struct.tblock*, %struct.tblock** %2, align 8
  %187 = getelementptr inbounds %struct.tblock, %struct.tblock* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @COMMIT_DELETE, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %205

192:                                              ; preds = %185
  %193 = load %struct.tblock*, %struct.tblock** %2, align 8
  %194 = getelementptr inbounds %struct.tblock, %struct.tblock* %193, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 0
  %196 = load %struct.inode*, %struct.inode** %195, align 8
  store %struct.inode* %196, %struct.inode** %3, align 8
  %197 = load %struct.inode*, %struct.inode** %4, align 8
  %198 = load %struct.inode*, %struct.inode** %3, align 8
  %199 = getelementptr inbounds %struct.inode, %struct.inode* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.tblock*, %struct.tblock** %2, align 8
  %202 = call i32 @diUpdatePMap(%struct.inode* %197, i32 %200, i32 1, %struct.tblock* %201)
  %203 = load %struct.inode*, %struct.inode** %3, align 8
  %204 = call i32 @iput(%struct.inode* %203)
  br label %205

205:                                              ; preds = %192, %185
  br label %206

206:                                              ; preds = %205, %166
  ret void
}

declare dso_local %struct.TYPE_4__* @JFS_SBI(i32) #1

declare dso_local %struct.tlock* @lid_to_tlock(i64) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @grab_metapage(%struct.metapage*) #1

declare dso_local i32 @txAllocPMap(%struct.inode*, %struct.maplock*, %struct.tblock*) #1

declare dso_local i32 @txFreeMap(%struct.inode*, %struct.maplock*, %struct.tblock*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @metapage_homeok(%struct.metapage*) #1

declare dso_local i32 @discard_metapage(%struct.metapage*) #1

declare dso_local i32 @diUpdatePMap(%struct.inode*, i32, i32, %struct.tblock*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
