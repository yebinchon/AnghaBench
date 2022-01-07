; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3xdr.c_compose_entry_fh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3xdr.c_compose_entry_fh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd3_readdirres = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.svc_export*, %struct.dentry* }
%struct.svc_export = type { i32 }
%struct.dentry = type { i32 }
%struct.svc_fh = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsd3_readdirres*, %struct.svc_fh*, i8*, i32)* @compose_entry_fh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compose_entry_fh(%struct.nfsd3_readdirres* %0, %struct.svc_fh* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfsd3_readdirres*, align 8
  %7 = alloca %struct.svc_fh*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.svc_export*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca i32, align 4
  store %struct.nfsd3_readdirres* %0, %struct.nfsd3_readdirres** %6, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %6, align 8
  %15 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load %struct.dentry*, %struct.dentry** %16, align 8
  store %struct.dentry* %17, %struct.dentry** %11, align 8
  %18 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %6, align 8
  %19 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.svc_export*, %struct.svc_export** %20, align 8
  store %struct.svc_export* %21, %struct.svc_export** %10, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i64 @isdotent(i8* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %4
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load %struct.dentry*, %struct.dentry** %11, align 8
  %31 = call %struct.dentry* @dget_parent(%struct.dentry* %30)
  store %struct.dentry* %31, %struct.dentry** %12, align 8
  %32 = load %struct.dentry*, %struct.dentry** %12, align 8
  %33 = load %struct.dentry*, %struct.dentry** %11, align 8
  %34 = icmp eq %struct.dentry* %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load %struct.dentry*, %struct.dentry** %12, align 8
  %37 = call i32 @dput(%struct.dentry* %36)
  %38 = load i32, i32* @ENOENT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %85

40:                                               ; preds = %29
  br label %44

41:                                               ; preds = %26
  %42 = load %struct.dentry*, %struct.dentry** %11, align 8
  %43 = call %struct.dentry* @dget(%struct.dentry* %42)
  store %struct.dentry* %43, %struct.dentry** %12, align 8
  br label %44

44:                                               ; preds = %41, %40
  br label %50

45:                                               ; preds = %4
  %46 = load i8*, i8** %8, align 8
  %47 = load %struct.dentry*, %struct.dentry** %11, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call %struct.dentry* @lookup_one_len(i8* %46, %struct.dentry* %47, i32 %48)
  store %struct.dentry* %49, %struct.dentry** %12, align 8
  br label %50

50:                                               ; preds = %45, %44
  %51 = load %struct.dentry*, %struct.dentry** %12, align 8
  %52 = call i64 @IS_ERR(%struct.dentry* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* @ENOENT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %85

57:                                               ; preds = %50
  %58 = load i32, i32* @ENOENT, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %13, align 4
  %60 = load %struct.dentry*, %struct.dentry** %12, align 8
  %61 = call i64 @d_mountpoint(%struct.dentry* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %81

64:                                               ; preds = %57
  %65 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %66 = load %struct.svc_export*, %struct.svc_export** %10, align 8
  %67 = load %struct.dentry*, %struct.dentry** %12, align 8
  %68 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %6, align 8
  %69 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %68, i32 0, i32 0
  %70 = call i32 @fh_compose(%struct.svc_fh* %65, %struct.svc_export* %66, %struct.dentry* %67, %struct.TYPE_2__* %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %81

74:                                               ; preds = %64
  %75 = load %struct.dentry*, %struct.dentry** %12, align 8
  %76 = getelementptr inbounds %struct.dentry, %struct.dentry* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  br label %81

80:                                               ; preds = %74
  store i32 0, i32* %13, align 4
  br label %81

81:                                               ; preds = %80, %79, %73, %63
  %82 = load %struct.dentry*, %struct.dentry** %12, align 8
  %83 = call i32 @dput(%struct.dentry* %82)
  %84 = load i32, i32* %13, align 4
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %81, %54, %35
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i64 @isdotent(i8*, i32) #1

declare dso_local %struct.dentry* @dget_parent(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local %struct.dentry* @dget(%struct.dentry*) #1

declare dso_local %struct.dentry* @lookup_one_len(i8*, %struct.dentry*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i64 @d_mountpoint(%struct.dentry*) #1

declare dso_local i32 @fh_compose(%struct.svc_fh*, %struct.svc_export*, %struct.dentry*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
