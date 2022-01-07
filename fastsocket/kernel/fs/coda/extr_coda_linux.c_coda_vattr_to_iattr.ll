; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_coda_linux.c_coda_vattr_to_iattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_coda_linux.c_coda_vattr_to_iattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i64, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.coda_vattr = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }

@S_IFREG = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @coda_vattr_to_iattr(%struct.inode* %0, %struct.coda_vattr* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.coda_vattr*, align 8
  %5 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.coda_vattr* %1, %struct.coda_vattr** %4, align 8
  %6 = load %struct.coda_vattr*, %struct.coda_vattr** %4, align 8
  %7 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %16 [
    i32 129, label %9
    i32 128, label %10
    i32 131, label %12
    i32 130, label %14
  ]

9:                                                ; preds = %2
  store i32 0, i32* %5, align 4
  br label %17

10:                                               ; preds = %2
  %11 = load i32, i32* @S_IFREG, align 4
  store i32 %11, i32* %5, align 4
  br label %17

12:                                               ; preds = %2
  %13 = load i32, i32* @S_IFDIR, align 4
  store i32 %13, i32* %5, align 4
  br label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @S_IFLNK, align 4
  store i32 %15, i32* %5, align 4
  br label %17

16:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %16, %14, %12, %10, %9
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.inode*, %struct.inode** %3, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load %struct.coda_vattr*, %struct.coda_vattr** %4, align 8
  %24 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %35

27:                                               ; preds = %17
  %28 = load %struct.coda_vattr*, %struct.coda_vattr** %4, align 8
  %29 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.inode*, %struct.inode** %3, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  br label %35

35:                                               ; preds = %27, %17
  %36 = load %struct.coda_vattr*, %struct.coda_vattr** %4, align 8
  %37 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.coda_vattr*, %struct.coda_vattr** %4, align 8
  %42 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = load %struct.inode*, %struct.inode** %3, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 8
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %40, %35
  %48 = load %struct.coda_vattr*, %struct.coda_vattr** %4, align 8
  %49 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, -1
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.coda_vattr*, %struct.coda_vattr** %4, align 8
  %54 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = load %struct.inode*, %struct.inode** %3, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 7
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %52, %47
  %60 = load %struct.coda_vattr*, %struct.coda_vattr** %4, align 8
  %61 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, -1
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.coda_vattr*, %struct.coda_vattr** %4, align 8
  %66 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.inode*, %struct.inode** %3, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %64, %59
  %71 = load %struct.coda_vattr*, %struct.coda_vattr** %4, align 8
  %72 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, -1
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load %struct.coda_vattr*, %struct.coda_vattr** %4, align 8
  %77 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.inode*, %struct.inode** %3, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %75, %70
  %82 = load %struct.coda_vattr*, %struct.coda_vattr** %4, align 8
  %83 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, -1
  br i1 %85, label %86, label %94

86:                                               ; preds = %81
  %87 = load %struct.coda_vattr*, %struct.coda_vattr** %4, align 8
  %88 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 511
  %91 = ashr i32 %90, 9
  %92 = load %struct.inode*, %struct.inode** %3, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %86, %81
  %95 = load %struct.coda_vattr*, %struct.coda_vattr** %4, align 8
  %96 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %95, i32 0, i32 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, -1
  br i1 %99, label %100, label %107

100:                                              ; preds = %94
  %101 = load %struct.inode*, %struct.inode** %3, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 6
  %103 = load %struct.coda_vattr*, %struct.coda_vattr** %4, align 8
  %104 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %103, i32 0, i32 8
  %105 = bitcast %struct.TYPE_4__* %102 to i8*
  %106 = bitcast %struct.TYPE_4__* %104 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %105, i8* align 4 %106, i64 4, i1 false)
  br label %107

107:                                              ; preds = %100, %94
  %108 = load %struct.coda_vattr*, %struct.coda_vattr** %4, align 8
  %109 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %108, i32 0, i32 7
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, -1
  br i1 %112, label %113, label %120

113:                                              ; preds = %107
  %114 = load %struct.inode*, %struct.inode** %3, align 8
  %115 = getelementptr inbounds %struct.inode, %struct.inode* %114, i32 0, i32 5
  %116 = load %struct.coda_vattr*, %struct.coda_vattr** %4, align 8
  %117 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %116, i32 0, i32 7
  %118 = bitcast %struct.TYPE_5__* %115 to i8*
  %119 = bitcast %struct.TYPE_5__* %117 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %118, i8* align 4 %119, i64 4, i1 false)
  br label %120

120:                                              ; preds = %113, %107
  %121 = load %struct.coda_vattr*, %struct.coda_vattr** %4, align 8
  %122 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %121, i32 0, i32 6
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, -1
  br i1 %125, label %126, label %133

126:                                              ; preds = %120
  %127 = load %struct.inode*, %struct.inode** %3, align 8
  %128 = getelementptr inbounds %struct.inode, %struct.inode* %127, i32 0, i32 4
  %129 = load %struct.coda_vattr*, %struct.coda_vattr** %4, align 8
  %130 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %129, i32 0, i32 6
  %131 = bitcast %struct.TYPE_6__* %128 to i8*
  %132 = bitcast %struct.TYPE_6__* %130 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %131, i8* align 4 %132, i64 4, i1 false)
  br label %133

133:                                              ; preds = %126, %120
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
