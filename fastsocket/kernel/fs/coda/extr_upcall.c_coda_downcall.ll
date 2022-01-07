; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_upcall.c_coda_downcall.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_upcall.c_coda_downcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.outputArgs = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.CodaFid, %struct.CodaFid }
%struct.CodaFid = type { i32 }
%struct.super_block = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.TYPE_7__ = type { %struct.CodaFid }
%struct.TYPE_8__ = type { %struct.CodaFid }
%struct.TYPE_9__ = type { %struct.CodaFid }

@C_FLUSH = common dso_local global i32 0, align 4
@C_PURGE = common dso_local global i32 0, align 4
@C_VATTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coda_downcall(i32 %0, %union.outputArgs* %1, %struct.super_block* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %union.outputArgs*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.CodaFid*, align 8
  %10 = alloca %struct.CodaFid*, align 8
  store i32 %0, i32* %5, align 4
  store %union.outputArgs* %1, %union.outputArgs** %6, align 8
  store %struct.super_block* %2, %struct.super_block** %7, align 8
  store %struct.inode* null, %struct.inode** %8, align 8
  %11 = load %struct.super_block*, %struct.super_block** %7, align 8
  %12 = icmp ne %struct.super_block* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.super_block*, %struct.super_block** %7, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = icmp ne %struct.TYPE_6__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13, %3
  store i32 0, i32* %4, align 4
  br label %119

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %112 [
    i32 133, label %21
    i32 131, label %41
    i32 129, label %44
    i32 128, label %61
    i32 132, label %75
    i32 130, label %94
  ]

21:                                               ; preds = %19
  %22 = load %struct.super_block*, %struct.super_block** %7, align 8
  %23 = call i32 @coda_cache_clear_all(%struct.super_block* %22)
  %24 = load %struct.super_block*, %struct.super_block** %7, align 8
  %25 = call i32 @shrink_dcache_sb(%struct.super_block* %24)
  %26 = load %struct.super_block*, %struct.super_block** %7, align 8
  %27 = getelementptr inbounds %struct.super_block, %struct.super_block* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.inode*, %struct.inode** %29, align 8
  %31 = icmp ne %struct.inode* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %21
  %33 = load %struct.super_block*, %struct.super_block** %7, align 8
  %34 = getelementptr inbounds %struct.super_block, %struct.super_block* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.inode*, %struct.inode** %36, align 8
  %38 = load i32, i32* @C_FLUSH, align 4
  %39 = call i32 @coda_flag_inode(%struct.inode* %37, i32 %38)
  br label %40

40:                                               ; preds = %32, %21
  br label %112

41:                                               ; preds = %19
  %42 = load %struct.super_block*, %struct.super_block** %7, align 8
  %43 = call i32 @coda_cache_clear_all(%struct.super_block* %42)
  br label %112

44:                                               ; preds = %19
  %45 = load %union.outputArgs*, %union.outputArgs** %6, align 8
  %46 = bitcast %union.outputArgs* %45 to %struct.TYPE_7__*
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  store %struct.CodaFid* %47, %struct.CodaFid** %9, align 8
  %48 = load %struct.CodaFid*, %struct.CodaFid** %9, align 8
  %49 = load %struct.super_block*, %struct.super_block** %7, align 8
  %50 = call %struct.inode* @coda_fid_to_inode(%struct.CodaFid* %48, %struct.super_block* %49)
  store %struct.inode* %50, %struct.inode** %8, align 8
  %51 = load %struct.inode*, %struct.inode** %8, align 8
  %52 = icmp ne %struct.inode* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %44
  %54 = load %struct.inode*, %struct.inode** %8, align 8
  %55 = load i32, i32* @C_PURGE, align 4
  %56 = call i32 @coda_flag_inode_children(%struct.inode* %54, i32 %55)
  %57 = load %struct.inode*, %struct.inode** %8, align 8
  %58 = load i32, i32* @C_VATTR, align 4
  %59 = call i32 @coda_flag_inode(%struct.inode* %57, i32 %58)
  br label %60

60:                                               ; preds = %53, %44
  br label %112

61:                                               ; preds = %19
  %62 = load %union.outputArgs*, %union.outputArgs** %6, align 8
  %63 = bitcast %union.outputArgs* %62 to %struct.TYPE_8__*
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  store %struct.CodaFid* %64, %struct.CodaFid** %9, align 8
  %65 = load %struct.CodaFid*, %struct.CodaFid** %9, align 8
  %66 = load %struct.super_block*, %struct.super_block** %7, align 8
  %67 = call %struct.inode* @coda_fid_to_inode(%struct.CodaFid* %65, %struct.super_block* %66)
  store %struct.inode* %67, %struct.inode** %8, align 8
  %68 = load %struct.inode*, %struct.inode** %8, align 8
  %69 = icmp ne %struct.inode* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %61
  %71 = load %struct.inode*, %struct.inode** %8, align 8
  %72 = load i32, i32* @C_VATTR, align 4
  %73 = call i32 @coda_flag_inode(%struct.inode* %71, i32 %72)
  br label %74

74:                                               ; preds = %70, %61
  br label %112

75:                                               ; preds = %19
  %76 = load %union.outputArgs*, %union.outputArgs** %6, align 8
  %77 = bitcast %union.outputArgs* %76 to %struct.TYPE_9__*
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  store %struct.CodaFid* %78, %struct.CodaFid** %9, align 8
  %79 = load %struct.CodaFid*, %struct.CodaFid** %9, align 8
  %80 = load %struct.super_block*, %struct.super_block** %7, align 8
  %81 = call %struct.inode* @coda_fid_to_inode(%struct.CodaFid* %79, %struct.super_block* %80)
  store %struct.inode* %81, %struct.inode** %8, align 8
  %82 = load %struct.inode*, %struct.inode** %8, align 8
  %83 = icmp ne %struct.inode* %82, null
  br i1 %83, label %84, label %93

84:                                               ; preds = %75
  %85 = load %struct.inode*, %struct.inode** %8, align 8
  %86 = load i32, i32* @C_PURGE, align 4
  %87 = call i32 @coda_flag_inode_children(%struct.inode* %85, i32 %86)
  %88 = load %struct.inode*, %struct.inode** %8, align 8
  %89 = load i32, i32* @C_PURGE, align 4
  %90 = call i32 @coda_flag_inode(%struct.inode* %88, i32 %89)
  %91 = load %struct.inode*, %struct.inode** %8, align 8
  %92 = call i32 @d_prune_aliases(%struct.inode* %91)
  br label %93

93:                                               ; preds = %84, %75
  br label %112

94:                                               ; preds = %19
  %95 = load %union.outputArgs*, %union.outputArgs** %6, align 8
  %96 = bitcast %union.outputArgs* %95 to %struct.TYPE_10__*
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  store %struct.CodaFid* %97, %struct.CodaFid** %9, align 8
  %98 = load %union.outputArgs*, %union.outputArgs** %6, align 8
  %99 = bitcast %union.outputArgs* %98 to %struct.TYPE_10__*
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  store %struct.CodaFid* %100, %struct.CodaFid** %10, align 8
  %101 = load %struct.CodaFid*, %struct.CodaFid** %9, align 8
  %102 = load %struct.super_block*, %struct.super_block** %7, align 8
  %103 = call %struct.inode* @coda_fid_to_inode(%struct.CodaFid* %101, %struct.super_block* %102)
  store %struct.inode* %103, %struct.inode** %8, align 8
  %104 = load %struct.inode*, %struct.inode** %8, align 8
  %105 = icmp ne %struct.inode* %104, null
  br i1 %105, label %106, label %111

106:                                              ; preds = %94
  %107 = load %struct.inode*, %struct.inode** %8, align 8
  %108 = load %struct.CodaFid*, %struct.CodaFid** %9, align 8
  %109 = load %struct.CodaFid*, %struct.CodaFid** %10, align 8
  %110 = call i32 @coda_replace_fid(%struct.inode* %107, %struct.CodaFid* %108, %struct.CodaFid* %109)
  br label %111

111:                                              ; preds = %106, %94
  br label %112

112:                                              ; preds = %19, %111, %93, %74, %60, %41, %40
  %113 = load %struct.inode*, %struct.inode** %8, align 8
  %114 = icmp ne %struct.inode* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load %struct.inode*, %struct.inode** %8, align 8
  %117 = call i32 @iput(%struct.inode* %116)
  br label %118

118:                                              ; preds = %115, %112
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %118, %18
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @coda_cache_clear_all(%struct.super_block*) #1

declare dso_local i32 @shrink_dcache_sb(%struct.super_block*) #1

declare dso_local i32 @coda_flag_inode(%struct.inode*, i32) #1

declare dso_local %struct.inode* @coda_fid_to_inode(%struct.CodaFid*, %struct.super_block*) #1

declare dso_local i32 @coda_flag_inode_children(%struct.inode*, i32) #1

declare dso_local i32 @d_prune_aliases(%struct.inode*) #1

declare dso_local i32 @coda_replace_fid(%struct.inode*, %struct.CodaFid*, %struct.CodaFid*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
