; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4acl.c_nfs4_acl_posix_to_nfsv4.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4acl.c_nfs4_acl_posix_to_nfsv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_acl = type { i32 }
%struct.posix_acl = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFS4_ACL_TYPE_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfs4_acl* @nfs4_acl_posix_to_nfsv4(%struct.posix_acl* %0, %struct.posix_acl* %1, i32 %2) #0 {
  %4 = alloca %struct.nfs4_acl*, align 8
  %5 = alloca %struct.posix_acl*, align 8
  %6 = alloca %struct.posix_acl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfs4_acl*, align 8
  %9 = alloca i32, align 4
  store %struct.posix_acl* %0, %struct.posix_acl** %5, align 8
  store %struct.posix_acl* %1, %struct.posix_acl** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.posix_acl*, %struct.posix_acl** %5, align 8
  %11 = icmp ne %struct.posix_acl* %10, null
  br i1 %11, label %12, label %27

12:                                               ; preds = %3
  %13 = load %struct.posix_acl*, %struct.posix_acl** %5, align 8
  %14 = call i64 @posix_acl_valid(%struct.posix_acl* %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.nfs4_acl* @ERR_PTR(i32 %18)
  store %struct.nfs4_acl* %19, %struct.nfs4_acl** %4, align 8
  br label %77

20:                                               ; preds = %12
  %21 = load %struct.posix_acl*, %struct.posix_acl** %5, align 8
  %22 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 2, %23
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %20, %3
  %28 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %29 = icmp ne %struct.posix_acl* %28, null
  br i1 %29, label %30, label %45

30:                                               ; preds = %27
  %31 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %32 = call i64 @posix_acl_valid(%struct.posix_acl* %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.nfs4_acl* @ERR_PTR(i32 %36)
  store %struct.nfs4_acl* %37, %struct.nfs4_acl** %4, align 8
  br label %77

38:                                               ; preds = %30
  %39 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %40 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 2, %41
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %38, %27
  %46 = load i32, i32* %9, align 4
  %47 = call %struct.nfs4_acl* @nfs4_acl_new(i32 %46)
  store %struct.nfs4_acl* %47, %struct.nfs4_acl** %8, align 8
  %48 = load %struct.nfs4_acl*, %struct.nfs4_acl** %8, align 8
  %49 = icmp eq %struct.nfs4_acl* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  %53 = call %struct.nfs4_acl* @ERR_PTR(i32 %52)
  store %struct.nfs4_acl* %53, %struct.nfs4_acl** %4, align 8
  br label %77

54:                                               ; preds = %45
  %55 = load %struct.posix_acl*, %struct.posix_acl** %5, align 8
  %56 = icmp ne %struct.posix_acl* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load %struct.posix_acl*, %struct.posix_acl** %5, align 8
  %59 = load %struct.nfs4_acl*, %struct.nfs4_acl** %8, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @NFS4_ACL_TYPE_DEFAULT, align 4
  %62 = xor i32 %61, -1
  %63 = and i32 %60, %62
  %64 = call i32 @_posix_to_nfsv4_one(%struct.posix_acl* %58, %struct.nfs4_acl* %59, i32 %63)
  br label %65

65:                                               ; preds = %57, %54
  %66 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %67 = icmp ne %struct.posix_acl* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %70 = load %struct.nfs4_acl*, %struct.nfs4_acl** %8, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @NFS4_ACL_TYPE_DEFAULT, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @_posix_to_nfsv4_one(%struct.posix_acl* %69, %struct.nfs4_acl* %70, i32 %73)
  br label %75

75:                                               ; preds = %68, %65
  %76 = load %struct.nfs4_acl*, %struct.nfs4_acl** %8, align 8
  store %struct.nfs4_acl* %76, %struct.nfs4_acl** %4, align 8
  br label %77

77:                                               ; preds = %75, %50, %34, %16
  %78 = load %struct.nfs4_acl*, %struct.nfs4_acl** %4, align 8
  ret %struct.nfs4_acl* %78
}

declare dso_local i64 @posix_acl_valid(%struct.posix_acl*) #1

declare dso_local %struct.nfs4_acl* @ERR_PTR(i32) #1

declare dso_local %struct.nfs4_acl* @nfs4_acl_new(i32) #1

declare dso_local i32 @_posix_to_nfsv4_one(%struct.posix_acl*, %struct.nfs4_acl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
