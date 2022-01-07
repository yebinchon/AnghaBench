; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_compat.c_do_ncp_super_data_conv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_compat.c_do_ncp_super_data_conv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compat_ncp_mount_data = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ncp_mount_data = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.compat_ncp_mount_data_v4 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ncp_mount_data_v4 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @do_ncp_super_data_conv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @do_ncp_super_data_conv(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.compat_ncp_mount_data*, align 8
  %6 = alloca %struct.ncp_mount_data*, align 8
  %7 = alloca %struct.compat_ncp_mount_data_v4*, align 8
  %8 = alloca %struct.ncp_mount_data_v4*, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to i32*
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %14, label %56

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = bitcast i8* %15 to %struct.compat_ncp_mount_data*
  store %struct.compat_ncp_mount_data* %16, %struct.compat_ncp_mount_data** %5, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = bitcast i8* %17 to %struct.ncp_mount_data*
  store %struct.ncp_mount_data* %18, %struct.ncp_mount_data** %6, align 8
  %19 = load %struct.compat_ncp_mount_data*, %struct.compat_ncp_mount_data** %5, align 8
  %20 = getelementptr inbounds %struct.compat_ncp_mount_data, %struct.compat_ncp_mount_data* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ncp_mount_data*, %struct.ncp_mount_data** %6, align 8
  %23 = getelementptr inbounds %struct.ncp_mount_data, %struct.ncp_mount_data* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 4
  %24 = load %struct.compat_ncp_mount_data*, %struct.compat_ncp_mount_data** %5, align 8
  %25 = getelementptr inbounds %struct.compat_ncp_mount_data, %struct.compat_ncp_mount_data* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ncp_mount_data*, %struct.ncp_mount_data** %6, align 8
  %28 = getelementptr inbounds %struct.ncp_mount_data, %struct.ncp_mount_data* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 4
  %29 = load %struct.compat_ncp_mount_data*, %struct.compat_ncp_mount_data** %5, align 8
  %30 = getelementptr inbounds %struct.compat_ncp_mount_data, %struct.compat_ncp_mount_data* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ncp_mount_data*, %struct.ncp_mount_data** %6, align 8
  %33 = getelementptr inbounds %struct.ncp_mount_data, %struct.ncp_mount_data* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load %struct.compat_ncp_mount_data*, %struct.compat_ncp_mount_data** %5, align 8
  %35 = getelementptr inbounds %struct.compat_ncp_mount_data, %struct.compat_ncp_mount_data* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ncp_mount_data*, %struct.ncp_mount_data** %6, align 8
  %38 = getelementptr inbounds %struct.ncp_mount_data, %struct.ncp_mount_data* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load %struct.ncp_mount_data*, %struct.ncp_mount_data** %6, align 8
  %40 = getelementptr inbounds %struct.ncp_mount_data, %struct.ncp_mount_data* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.compat_ncp_mount_data*, %struct.compat_ncp_mount_data** %5, align 8
  %43 = getelementptr inbounds %struct.compat_ncp_mount_data, %struct.compat_ncp_mount_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @memmove(i32 %41, i32 %44, i32 16)
  %46 = load %struct.compat_ncp_mount_data*, %struct.compat_ncp_mount_data** %5, align 8
  %47 = getelementptr inbounds %struct.compat_ncp_mount_data, %struct.compat_ncp_mount_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ncp_mount_data*, %struct.ncp_mount_data** %6, align 8
  %50 = getelementptr inbounds %struct.ncp_mount_data, %struct.ncp_mount_data* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.compat_ncp_mount_data*, %struct.compat_ncp_mount_data** %5, align 8
  %52 = getelementptr inbounds %struct.compat_ncp_mount_data, %struct.compat_ncp_mount_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ncp_mount_data*, %struct.ncp_mount_data** %6, align 8
  %55 = getelementptr inbounds %struct.ncp_mount_data, %struct.ncp_mount_data* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  br label %120

56:                                               ; preds = %1
  %57 = load i32, i32* %4, align 4
  %58 = icmp eq i32 %57, 4
  br i1 %58, label %59, label %114

59:                                               ; preds = %56
  %60 = load i8*, i8** %3, align 8
  %61 = bitcast i8* %60 to %struct.compat_ncp_mount_data_v4*
  store %struct.compat_ncp_mount_data_v4* %61, %struct.compat_ncp_mount_data_v4** %7, align 8
  %62 = load i8*, i8** %3, align 8
  %63 = bitcast i8* %62 to %struct.ncp_mount_data_v4*
  store %struct.ncp_mount_data_v4* %63, %struct.ncp_mount_data_v4** %8, align 8
  %64 = load %struct.compat_ncp_mount_data_v4*, %struct.compat_ncp_mount_data_v4** %7, align 8
  %65 = getelementptr inbounds %struct.compat_ncp_mount_data_v4, %struct.compat_ncp_mount_data_v4* %64, i32 0, i32 9
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ncp_mount_data_v4*, %struct.ncp_mount_data_v4** %8, align 8
  %68 = getelementptr inbounds %struct.ncp_mount_data_v4, %struct.ncp_mount_data_v4* %67, i32 0, i32 9
  store i32 %66, i32* %68, align 4
  %69 = load %struct.compat_ncp_mount_data_v4*, %struct.compat_ncp_mount_data_v4** %7, align 8
  %70 = getelementptr inbounds %struct.compat_ncp_mount_data_v4, %struct.compat_ncp_mount_data_v4* %69, i32 0, i32 8
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ncp_mount_data_v4*, %struct.ncp_mount_data_v4** %8, align 8
  %73 = getelementptr inbounds %struct.ncp_mount_data_v4, %struct.ncp_mount_data_v4* %72, i32 0, i32 8
  store i32 %71, i32* %73, align 4
  %74 = load %struct.compat_ncp_mount_data_v4*, %struct.compat_ncp_mount_data_v4** %7, align 8
  %75 = getelementptr inbounds %struct.compat_ncp_mount_data_v4, %struct.compat_ncp_mount_data_v4* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ncp_mount_data_v4*, %struct.ncp_mount_data_v4** %8, align 8
  %78 = getelementptr inbounds %struct.ncp_mount_data_v4, %struct.ncp_mount_data_v4* %77, i32 0, i32 7
  store i32 %76, i32* %78, align 4
  %79 = load %struct.compat_ncp_mount_data_v4*, %struct.compat_ncp_mount_data_v4** %7, align 8
  %80 = getelementptr inbounds %struct.compat_ncp_mount_data_v4, %struct.compat_ncp_mount_data_v4* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ncp_mount_data_v4*, %struct.ncp_mount_data_v4** %8, align 8
  %83 = getelementptr inbounds %struct.ncp_mount_data_v4, %struct.ncp_mount_data_v4* %82, i32 0, i32 6
  store i32 %81, i32* %83, align 4
  %84 = load %struct.compat_ncp_mount_data_v4*, %struct.compat_ncp_mount_data_v4** %7, align 8
  %85 = getelementptr inbounds %struct.compat_ncp_mount_data_v4, %struct.compat_ncp_mount_data_v4* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ncp_mount_data_v4*, %struct.ncp_mount_data_v4** %8, align 8
  %88 = getelementptr inbounds %struct.ncp_mount_data_v4, %struct.ncp_mount_data_v4* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 4
  %89 = load %struct.compat_ncp_mount_data_v4*, %struct.compat_ncp_mount_data_v4** %7, align 8
  %90 = getelementptr inbounds %struct.compat_ncp_mount_data_v4, %struct.compat_ncp_mount_data_v4* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ncp_mount_data_v4*, %struct.ncp_mount_data_v4** %8, align 8
  %93 = getelementptr inbounds %struct.ncp_mount_data_v4, %struct.ncp_mount_data_v4* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 4
  %94 = load %struct.compat_ncp_mount_data_v4*, %struct.compat_ncp_mount_data_v4** %7, align 8
  %95 = getelementptr inbounds %struct.compat_ncp_mount_data_v4, %struct.compat_ncp_mount_data_v4* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ncp_mount_data_v4*, %struct.ncp_mount_data_v4** %8, align 8
  %98 = getelementptr inbounds %struct.ncp_mount_data_v4, %struct.ncp_mount_data_v4* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  %99 = load %struct.compat_ncp_mount_data_v4*, %struct.compat_ncp_mount_data_v4** %7, align 8
  %100 = getelementptr inbounds %struct.compat_ncp_mount_data_v4, %struct.compat_ncp_mount_data_v4* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.ncp_mount_data_v4*, %struct.ncp_mount_data_v4** %8, align 8
  %103 = getelementptr inbounds %struct.ncp_mount_data_v4, %struct.ncp_mount_data_v4* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 4
  %104 = load %struct.compat_ncp_mount_data_v4*, %struct.compat_ncp_mount_data_v4** %7, align 8
  %105 = getelementptr inbounds %struct.compat_ncp_mount_data_v4, %struct.compat_ncp_mount_data_v4* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.ncp_mount_data_v4*, %struct.ncp_mount_data_v4** %8, align 8
  %108 = getelementptr inbounds %struct.ncp_mount_data_v4, %struct.ncp_mount_data_v4* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.compat_ncp_mount_data_v4*, %struct.compat_ncp_mount_data_v4** %7, align 8
  %110 = getelementptr inbounds %struct.compat_ncp_mount_data_v4, %struct.compat_ncp_mount_data_v4* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.ncp_mount_data_v4*, %struct.ncp_mount_data_v4** %8, align 8
  %113 = getelementptr inbounds %struct.ncp_mount_data_v4, %struct.ncp_mount_data_v4* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  br label %119

114:                                              ; preds = %56
  %115 = load i32, i32* %4, align 4
  %116 = icmp ne i32 %115, 5
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  store i8* null, i8** %2, align 8
  br label %122

118:                                              ; preds = %114
  br label %119

119:                                              ; preds = %118, %59
  br label %120

120:                                              ; preds = %119, %14
  %121 = load i8*, i8** %3, align 8
  store i8* %121, i8** %2, align 8
  br label %122

122:                                              ; preds = %120, %117
  %123 = load i8*, i8** %2, align 8
  ret i8* %123
}

declare dso_local i32 @memmove(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
