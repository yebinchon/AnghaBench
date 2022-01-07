; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_nfs_subr.c_nfsproc_write_2_svc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_nfs_subr.c_nfsproc_write_2_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i32 }
%struct.svc_req = type { i32 }

@nfsproc_write_2_svc.res = internal global %struct.TYPE_6__ zeroinitializer, align 8
@ESTALE = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @nfsproc_write_2_svc(%struct.TYPE_5__* %0, %struct.svc_req* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.svc_req*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.svc_req* %1, %struct.svc_req** %4, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = call i32 @fh_to_mp(i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @ESTALE, align 4
  %11 = call i8* @nfs_error(i32 %10)
  store i8* %11, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @nfsproc_write_2_svc.res, i32 0, i32 0), align 8
  br label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EROFS, align 4
  %14 = call i8* @nfs_error(i32 %13)
  store i8* %14, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @nfsproc_write_2_svc.res, i32 0, i32 0), align 8
  br label %15

15:                                               ; preds = %12, %9
  ret %struct.TYPE_6__* @nfsproc_write_2_svc.res
}

declare dso_local i32 @fh_to_mp(i32*) #1

declare dso_local i8* @nfs_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
