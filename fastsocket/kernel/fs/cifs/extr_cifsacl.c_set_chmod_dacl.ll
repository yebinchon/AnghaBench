; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsacl.c_set_chmod_dacl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsacl.c_set_chmod_dacl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_sid = type { i32 }
%struct.cifs_acl = type { i32, i32 }
%struct.cifs_ace = type { i32 }

@S_IRWXU = common dso_local global i32 0, align 4
@S_IRWXG = common dso_local global i32 0, align 4
@sid_everyone = common dso_local global %struct.cifs_sid zeroinitializer, align 4
@S_IRWXO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cifs_acl*, %struct.cifs_sid*, %struct.cifs_sid*, i32)* @set_chmod_dacl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_chmod_dacl(%struct.cifs_acl* %0, %struct.cifs_sid* %1, %struct.cifs_sid* %2, i32 %3) #0 {
  %5 = alloca %struct.cifs_acl*, align 8
  %6 = alloca %struct.cifs_sid*, align 8
  %7 = alloca %struct.cifs_sid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cifs_acl*, align 8
  store %struct.cifs_acl* %0, %struct.cifs_acl** %5, align 8
  store %struct.cifs_sid* %1, %struct.cifs_sid** %6, align 8
  store %struct.cifs_sid* %2, %struct.cifs_sid** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.cifs_acl*, %struct.cifs_acl** %5, align 8
  %12 = bitcast %struct.cifs_acl* %11 to i8*
  %13 = getelementptr inbounds i8, i8* %12, i64 8
  %14 = bitcast i8* %13 to %struct.cifs_acl*
  store %struct.cifs_acl* %14, %struct.cifs_acl** %10, align 8
  %15 = load %struct.cifs_acl*, %struct.cifs_acl** %10, align 8
  %16 = bitcast %struct.cifs_acl* %15 to i8*
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = bitcast i8* %19 to %struct.cifs_ace*
  %21 = load %struct.cifs_sid*, %struct.cifs_sid** %6, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @S_IRWXU, align 4
  %24 = call i32 @fill_ace_for_sid(%struct.cifs_ace* %20, %struct.cifs_sid* %21, i32 %22, i32 %23)
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* %9, align 4
  %27 = load %struct.cifs_acl*, %struct.cifs_acl** %10, align 8
  %28 = bitcast %struct.cifs_acl* %27 to i8*
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = bitcast i8* %31 to %struct.cifs_ace*
  %33 = load %struct.cifs_sid*, %struct.cifs_sid** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @S_IRWXG, align 4
  %36 = call i32 @fill_ace_for_sid(%struct.cifs_ace* %32, %struct.cifs_sid* %33, i32 %34, i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %9, align 4
  %39 = load %struct.cifs_acl*, %struct.cifs_acl** %10, align 8
  %40 = bitcast %struct.cifs_acl* %39 to i8*
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = bitcast i8* %43 to %struct.cifs_ace*
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @S_IRWXO, align 4
  %47 = call i32 @fill_ace_for_sid(%struct.cifs_ace* %44, %struct.cifs_sid* @sid_everyone, i32 %45, i32 %46)
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = add i64 %51, 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 @cpu_to_le16(i32 %53)
  %55 = load %struct.cifs_acl*, %struct.cifs_acl** %5, align 8
  %56 = getelementptr inbounds %struct.cifs_acl, %struct.cifs_acl* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = call i32 @cpu_to_le32(i32 3)
  %58 = load %struct.cifs_acl*, %struct.cifs_acl** %5, align 8
  %59 = getelementptr inbounds %struct.cifs_acl, %struct.cifs_acl* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  ret i32 0
}

declare dso_local i32 @fill_ace_for_sid(%struct.cifs_ace*, %struct.cifs_sid*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
