; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_svcshare.c_nlmsvc_share_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_svcshare.c_nlmsvc_share_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_host = type { i32 }
%struct.nlm_file = type { %struct.nlm_share* }
%struct.nlm_share = type { i32, i32, %struct.nlm_share*, %struct.TYPE_4__, %struct.nlm_host*, %struct.nlm_file* }
%struct.TYPE_4__ = type { i64, i32* }
%struct.nlm_args = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.xdr_netobj }
%struct.xdr_netobj = type { i64, i32 }

@nlm_lck_denied = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@nlm_lck_denied_nolocks = common dso_local global i32 0, align 4
@nlm_granted = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlmsvc_share_file(%struct.nlm_host* %0, %struct.nlm_file* %1, %struct.nlm_args* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nlm_host*, align 8
  %6 = alloca %struct.nlm_file*, align 8
  %7 = alloca %struct.nlm_args*, align 8
  %8 = alloca %struct.nlm_share*, align 8
  %9 = alloca %struct.xdr_netobj*, align 8
  %10 = alloca i32*, align 8
  store %struct.nlm_host* %0, %struct.nlm_host** %5, align 8
  store %struct.nlm_file* %1, %struct.nlm_file** %6, align 8
  store %struct.nlm_args* %2, %struct.nlm_args** %7, align 8
  %11 = load %struct.nlm_args*, %struct.nlm_args** %7, align 8
  %12 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.xdr_netobj* %13, %struct.xdr_netobj** %9, align 8
  %14 = load %struct.nlm_file*, %struct.nlm_file** %6, align 8
  %15 = getelementptr inbounds %struct.nlm_file, %struct.nlm_file* %14, i32 0, i32 0
  %16 = load %struct.nlm_share*, %struct.nlm_share** %15, align 8
  store %struct.nlm_share* %16, %struct.nlm_share** %8, align 8
  br label %17

17:                                               ; preds = %53, %3
  %18 = load %struct.nlm_share*, %struct.nlm_share** %8, align 8
  %19 = icmp ne %struct.nlm_share* %18, null
  br i1 %19, label %20, label %57

20:                                               ; preds = %17
  %21 = load %struct.nlm_share*, %struct.nlm_share** %8, align 8
  %22 = getelementptr inbounds %struct.nlm_share, %struct.nlm_share* %21, i32 0, i32 4
  %23 = load %struct.nlm_host*, %struct.nlm_host** %22, align 8
  %24 = load %struct.nlm_host*, %struct.nlm_host** %5, align 8
  %25 = icmp eq %struct.nlm_host* %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load %struct.nlm_share*, %struct.nlm_share** %8, align 8
  %28 = load %struct.xdr_netobj*, %struct.xdr_netobj** %9, align 8
  %29 = call i64 @nlm_cmp_owner(%struct.nlm_share* %27, %struct.xdr_netobj* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %104

32:                                               ; preds = %26, %20
  %33 = load %struct.nlm_args*, %struct.nlm_args** %7, align 8
  %34 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.nlm_share*, %struct.nlm_share** %8, align 8
  %37 = getelementptr inbounds %struct.nlm_share, %struct.nlm_share* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %32
  %42 = load %struct.nlm_args*, %struct.nlm_args** %7, align 8
  %43 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.nlm_share*, %struct.nlm_share** %8, align 8
  %46 = getelementptr inbounds %struct.nlm_share, %struct.nlm_share* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %44, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %41, %32
  %51 = load i32, i32* @nlm_lck_denied, align 4
  store i32 %51, i32* %4, align 4
  br label %116

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.nlm_share*, %struct.nlm_share** %8, align 8
  %55 = getelementptr inbounds %struct.nlm_share, %struct.nlm_share* %54, i32 0, i32 2
  %56 = load %struct.nlm_share*, %struct.nlm_share** %55, align 8
  store %struct.nlm_share* %56, %struct.nlm_share** %8, align 8
  br label %17

57:                                               ; preds = %17
  %58 = load %struct.xdr_netobj*, %struct.xdr_netobj** %9, align 8
  %59 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add i64 48, %60
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call %struct.nlm_share* @kmalloc(i64 %61, i32 %62)
  store %struct.nlm_share* %63, %struct.nlm_share** %8, align 8
  %64 = load %struct.nlm_share*, %struct.nlm_share** %8, align 8
  %65 = icmp eq %struct.nlm_share* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = load i32, i32* @nlm_lck_denied_nolocks, align 4
  store i32 %67, i32* %4, align 4
  br label %116

68:                                               ; preds = %57
  %69 = load %struct.nlm_share*, %struct.nlm_share** %8, align 8
  %70 = getelementptr inbounds %struct.nlm_share, %struct.nlm_share* %69, i64 1
  %71 = bitcast %struct.nlm_share* %70 to i32*
  store i32* %71, i32** %10, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = load %struct.xdr_netobj*, %struct.xdr_netobj** %9, align 8
  %74 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.xdr_netobj*, %struct.xdr_netobj** %9, align 8
  %77 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @memcpy(i32* %72, i32 %75, i64 %78)
  %80 = load %struct.nlm_file*, %struct.nlm_file** %6, align 8
  %81 = load %struct.nlm_share*, %struct.nlm_share** %8, align 8
  %82 = getelementptr inbounds %struct.nlm_share, %struct.nlm_share* %81, i32 0, i32 5
  store %struct.nlm_file* %80, %struct.nlm_file** %82, align 8
  %83 = load %struct.nlm_host*, %struct.nlm_host** %5, align 8
  %84 = load %struct.nlm_share*, %struct.nlm_share** %8, align 8
  %85 = getelementptr inbounds %struct.nlm_share, %struct.nlm_share* %84, i32 0, i32 4
  store %struct.nlm_host* %83, %struct.nlm_host** %85, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = load %struct.nlm_share*, %struct.nlm_share** %8, align 8
  %88 = getelementptr inbounds %struct.nlm_share, %struct.nlm_share* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  store i32* %86, i32** %89, align 8
  %90 = load %struct.xdr_netobj*, %struct.xdr_netobj** %9, align 8
  %91 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.nlm_share*, %struct.nlm_share** %8, align 8
  %94 = getelementptr inbounds %struct.nlm_share, %struct.nlm_share* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i64 %92, i64* %95, align 8
  %96 = load %struct.nlm_file*, %struct.nlm_file** %6, align 8
  %97 = getelementptr inbounds %struct.nlm_file, %struct.nlm_file* %96, i32 0, i32 0
  %98 = load %struct.nlm_share*, %struct.nlm_share** %97, align 8
  %99 = load %struct.nlm_share*, %struct.nlm_share** %8, align 8
  %100 = getelementptr inbounds %struct.nlm_share, %struct.nlm_share* %99, i32 0, i32 2
  store %struct.nlm_share* %98, %struct.nlm_share** %100, align 8
  %101 = load %struct.nlm_share*, %struct.nlm_share** %8, align 8
  %102 = load %struct.nlm_file*, %struct.nlm_file** %6, align 8
  %103 = getelementptr inbounds %struct.nlm_file, %struct.nlm_file* %102, i32 0, i32 0
  store %struct.nlm_share* %101, %struct.nlm_share** %103, align 8
  br label %104

104:                                              ; preds = %68, %31
  %105 = load %struct.nlm_args*, %struct.nlm_args** %7, align 8
  %106 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.nlm_share*, %struct.nlm_share** %8, align 8
  %109 = getelementptr inbounds %struct.nlm_share, %struct.nlm_share* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load %struct.nlm_args*, %struct.nlm_args** %7, align 8
  %111 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.nlm_share*, %struct.nlm_share** %8, align 8
  %114 = getelementptr inbounds %struct.nlm_share, %struct.nlm_share* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* @nlm_granted, align 4
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %104, %66, %50
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i64 @nlm_cmp_owner(%struct.nlm_share*, %struct.xdr_netobj*) #1

declare dso_local %struct.nlm_share* @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
