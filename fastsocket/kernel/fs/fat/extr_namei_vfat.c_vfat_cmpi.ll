; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_namei_vfat.c_vfat_cmpi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_namei_vfat.c_vfat_cmpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.qstr = type { i32 }
%struct.nls_table = type { i32 }
%struct.TYPE_4__ = type { %struct.nls_table* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.qstr*, %struct.qstr*)* @vfat_cmpi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfat_cmpi(%struct.dentry* %0, %struct.qstr* %1, %struct.qstr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.qstr*, align 8
  %7 = alloca %struct.qstr*, align 8
  %8 = alloca %struct.nls_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.qstr* %1, %struct.qstr** %6, align 8
  store %struct.qstr* %2, %struct.qstr** %7, align 8
  %11 = load %struct.dentry*, %struct.dentry** %5, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.TYPE_4__* @MSDOS_SB(i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.nls_table*, %struct.nls_table** %17, align 8
  store %struct.nls_table* %18, %struct.nls_table** %8, align 8
  %19 = load %struct.qstr*, %struct.qstr** %6, align 8
  %20 = call i32 @vfat_striptail_len(%struct.qstr* %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.qstr*, %struct.qstr** %7, align 8
  %22 = call i32 @vfat_striptail_len(%struct.qstr* %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %3
  %27 = load %struct.nls_table*, %struct.nls_table** %8, align 8
  %28 = load %struct.qstr*, %struct.qstr** %6, align 8
  %29 = getelementptr inbounds %struct.qstr, %struct.qstr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.qstr*, %struct.qstr** %7, align 8
  %32 = getelementptr inbounds %struct.qstr, %struct.qstr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i64 @nls_strnicmp(%struct.nls_table* %27, i32 %30, i32 %33, i32 %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %40

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38, %3
  store i32 1, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %37
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.TYPE_4__* @MSDOS_SB(i32) #1

declare dso_local i32 @vfat_striptail_len(%struct.qstr*) #1

declare dso_local i64 @nls_strnicmp(%struct.nls_table*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
