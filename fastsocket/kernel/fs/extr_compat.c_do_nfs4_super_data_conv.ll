; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_compat.c_do_nfs4_super_data_conv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_compat.c_do_nfs4_super_data_conv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compat_nfs4_mount_data_v1 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nfs4_mount_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @do_nfs4_super_data_conv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_nfs4_super_data_conv(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.compat_nfs4_mount_data_v1*, align 8
  %5 = alloca %struct.nfs4_mount_data*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to i32*
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %108

11:                                               ; preds = %1
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.compat_nfs4_mount_data_v1*
  store %struct.compat_nfs4_mount_data_v1* %13, %struct.compat_nfs4_mount_data_v1** %4, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = bitcast i8* %14 to %struct.nfs4_mount_data*
  store %struct.nfs4_mount_data* %15, %struct.nfs4_mount_data** %5, align 8
  %16 = load %struct.compat_nfs4_mount_data_v1*, %struct.compat_nfs4_mount_data_v1** %4, align 8
  %17 = getelementptr inbounds %struct.compat_nfs4_mount_data_v1, %struct.compat_nfs4_mount_data_v1* %16, i32 0, i32 17
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @compat_ptr(i32 %18)
  %20 = load %struct.nfs4_mount_data*, %struct.nfs4_mount_data** %5, align 8
  %21 = getelementptr inbounds %struct.nfs4_mount_data, %struct.nfs4_mount_data* %20, i32 0, i32 17
  store i8* %19, i8** %21, align 8
  %22 = load %struct.compat_nfs4_mount_data_v1*, %struct.compat_nfs4_mount_data_v1** %4, align 8
  %23 = getelementptr inbounds %struct.compat_nfs4_mount_data_v1, %struct.compat_nfs4_mount_data_v1* %22, i32 0, i32 16
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.nfs4_mount_data*, %struct.nfs4_mount_data** %5, align 8
  %26 = getelementptr inbounds %struct.nfs4_mount_data, %struct.nfs4_mount_data* %25, i32 0, i32 16
  store i32 %24, i32* %26, align 4
  %27 = load %struct.compat_nfs4_mount_data_v1*, %struct.compat_nfs4_mount_data_v1** %4, align 8
  %28 = getelementptr inbounds %struct.compat_nfs4_mount_data_v1, %struct.compat_nfs4_mount_data_v1* %27, i32 0, i32 15
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.nfs4_mount_data*, %struct.nfs4_mount_data** %5, align 8
  %31 = getelementptr inbounds %struct.nfs4_mount_data, %struct.nfs4_mount_data* %30, i32 0, i32 15
  store i32 %29, i32* %31, align 8
  %32 = load %struct.compat_nfs4_mount_data_v1*, %struct.compat_nfs4_mount_data_v1** %4, align 8
  %33 = getelementptr inbounds %struct.compat_nfs4_mount_data_v1, %struct.compat_nfs4_mount_data_v1* %32, i32 0, i32 14
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @compat_ptr(i32 %34)
  %36 = load %struct.nfs4_mount_data*, %struct.nfs4_mount_data** %5, align 8
  %37 = getelementptr inbounds %struct.nfs4_mount_data, %struct.nfs4_mount_data* %36, i32 0, i32 14
  store i8* %35, i8** %37, align 8
  %38 = load %struct.compat_nfs4_mount_data_v1*, %struct.compat_nfs4_mount_data_v1** %4, align 8
  %39 = getelementptr inbounds %struct.compat_nfs4_mount_data_v1, %struct.compat_nfs4_mount_data_v1* %38, i32 0, i32 13
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.nfs4_mount_data*, %struct.nfs4_mount_data** %5, align 8
  %42 = getelementptr inbounds %struct.nfs4_mount_data, %struct.nfs4_mount_data* %41, i32 0, i32 13
  store i32 %40, i32* %42, align 4
  %43 = load %struct.nfs4_mount_data*, %struct.nfs4_mount_data** %5, align 8
  %44 = getelementptr inbounds %struct.nfs4_mount_data, %struct.nfs4_mount_data* %43, i32 0, i32 12
  %45 = load %struct.compat_nfs4_mount_data_v1*, %struct.compat_nfs4_mount_data_v1** %4, align 8
  %46 = getelementptr inbounds %struct.compat_nfs4_mount_data_v1, %struct.compat_nfs4_mount_data_v1* %45, i32 0, i32 12
  %47 = call i32 @compat_nfs_string(i32* %44, i32* %46)
  %48 = load %struct.nfs4_mount_data*, %struct.nfs4_mount_data** %5, align 8
  %49 = getelementptr inbounds %struct.nfs4_mount_data, %struct.nfs4_mount_data* %48, i32 0, i32 11
  %50 = load %struct.compat_nfs4_mount_data_v1*, %struct.compat_nfs4_mount_data_v1** %4, align 8
  %51 = getelementptr inbounds %struct.compat_nfs4_mount_data_v1, %struct.compat_nfs4_mount_data_v1* %50, i32 0, i32 11
  %52 = call i32 @compat_nfs_string(i32* %49, i32* %51)
  %53 = load %struct.nfs4_mount_data*, %struct.nfs4_mount_data** %5, align 8
  %54 = getelementptr inbounds %struct.nfs4_mount_data, %struct.nfs4_mount_data* %53, i32 0, i32 10
  %55 = load %struct.compat_nfs4_mount_data_v1*, %struct.compat_nfs4_mount_data_v1** %4, align 8
  %56 = getelementptr inbounds %struct.compat_nfs4_mount_data_v1, %struct.compat_nfs4_mount_data_v1* %55, i32 0, i32 10
  %57 = call i32 @compat_nfs_string(i32* %54, i32* %56)
  %58 = load %struct.compat_nfs4_mount_data_v1*, %struct.compat_nfs4_mount_data_v1** %4, align 8
  %59 = getelementptr inbounds %struct.compat_nfs4_mount_data_v1, %struct.compat_nfs4_mount_data_v1* %58, i32 0, i32 9
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.nfs4_mount_data*, %struct.nfs4_mount_data** %5, align 8
  %62 = getelementptr inbounds %struct.nfs4_mount_data, %struct.nfs4_mount_data* %61, i32 0, i32 9
  store i32 %60, i32* %62, align 4
  %63 = load %struct.compat_nfs4_mount_data_v1*, %struct.compat_nfs4_mount_data_v1** %4, align 8
  %64 = getelementptr inbounds %struct.compat_nfs4_mount_data_v1, %struct.compat_nfs4_mount_data_v1* %63, i32 0, i32 8
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.nfs4_mount_data*, %struct.nfs4_mount_data** %5, align 8
  %67 = getelementptr inbounds %struct.nfs4_mount_data, %struct.nfs4_mount_data* %66, i32 0, i32 8
  store i32 %65, i32* %67, align 8
  %68 = load %struct.compat_nfs4_mount_data_v1*, %struct.compat_nfs4_mount_data_v1** %4, align 8
  %69 = getelementptr inbounds %struct.compat_nfs4_mount_data_v1, %struct.compat_nfs4_mount_data_v1* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.nfs4_mount_data*, %struct.nfs4_mount_data** %5, align 8
  %72 = getelementptr inbounds %struct.nfs4_mount_data, %struct.nfs4_mount_data* %71, i32 0, i32 7
  store i32 %70, i32* %72, align 4
  %73 = load %struct.compat_nfs4_mount_data_v1*, %struct.compat_nfs4_mount_data_v1** %4, align 8
  %74 = getelementptr inbounds %struct.compat_nfs4_mount_data_v1, %struct.compat_nfs4_mount_data_v1* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.nfs4_mount_data*, %struct.nfs4_mount_data** %5, align 8
  %77 = getelementptr inbounds %struct.nfs4_mount_data, %struct.nfs4_mount_data* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 8
  %78 = load %struct.compat_nfs4_mount_data_v1*, %struct.compat_nfs4_mount_data_v1** %4, align 8
  %79 = getelementptr inbounds %struct.compat_nfs4_mount_data_v1, %struct.compat_nfs4_mount_data_v1* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.nfs4_mount_data*, %struct.nfs4_mount_data** %5, align 8
  %82 = getelementptr inbounds %struct.nfs4_mount_data, %struct.nfs4_mount_data* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 4
  %83 = load %struct.compat_nfs4_mount_data_v1*, %struct.compat_nfs4_mount_data_v1** %4, align 8
  %84 = getelementptr inbounds %struct.compat_nfs4_mount_data_v1, %struct.compat_nfs4_mount_data_v1* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.nfs4_mount_data*, %struct.nfs4_mount_data** %5, align 8
  %87 = getelementptr inbounds %struct.nfs4_mount_data, %struct.nfs4_mount_data* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 8
  %88 = load %struct.compat_nfs4_mount_data_v1*, %struct.compat_nfs4_mount_data_v1** %4, align 8
  %89 = getelementptr inbounds %struct.compat_nfs4_mount_data_v1, %struct.compat_nfs4_mount_data_v1* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.nfs4_mount_data*, %struct.nfs4_mount_data** %5, align 8
  %92 = getelementptr inbounds %struct.nfs4_mount_data, %struct.nfs4_mount_data* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  %93 = load %struct.compat_nfs4_mount_data_v1*, %struct.compat_nfs4_mount_data_v1** %4, align 8
  %94 = getelementptr inbounds %struct.compat_nfs4_mount_data_v1, %struct.compat_nfs4_mount_data_v1* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.nfs4_mount_data*, %struct.nfs4_mount_data** %5, align 8
  %97 = getelementptr inbounds %struct.nfs4_mount_data, %struct.nfs4_mount_data* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load %struct.compat_nfs4_mount_data_v1*, %struct.compat_nfs4_mount_data_v1** %4, align 8
  %99 = getelementptr inbounds %struct.compat_nfs4_mount_data_v1, %struct.compat_nfs4_mount_data_v1* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.nfs4_mount_data*, %struct.nfs4_mount_data** %5, align 8
  %102 = getelementptr inbounds %struct.nfs4_mount_data, %struct.nfs4_mount_data* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load %struct.compat_nfs4_mount_data_v1*, %struct.compat_nfs4_mount_data_v1** %4, align 8
  %104 = getelementptr inbounds %struct.compat_nfs4_mount_data_v1, %struct.compat_nfs4_mount_data_v1* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.nfs4_mount_data*, %struct.nfs4_mount_data** %5, align 8
  %107 = getelementptr inbounds %struct.nfs4_mount_data, %struct.nfs4_mount_data* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  br label %108

108:                                              ; preds = %11, %1
  ret i32 0
}

declare dso_local i8* @compat_ptr(i32) #1

declare dso_local i32 @compat_nfs_string(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
