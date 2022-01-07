; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsacl.c_init_cifs_idmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsacl.c_init_cifs_idmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.cred = type { i32, %struct.key* }
%struct.key = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Registering the %s key type\0A\00", align 1
@cifs_idmap_key_type = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@ENOMEM = common dso_local global i32 0, align 4
@key_type_keyring = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c".cifs_idmap\00", align 1
@KEY_POS_ALL = common dso_local global i32 0, align 4
@KEY_POS_SETATTR = common dso_local global i32 0, align 4
@KEY_USR_VIEW = common dso_local global i32 0, align 4
@KEY_USR_READ = common dso_local global i32 0, align 4
@KEY_ALLOC_NOT_IN_QUOTA = common dso_local global i32 0, align 4
@KEY_REQKEY_DEFL_THREAD_KEYRING = common dso_local global i32 0, align 4
@root_cred = common dso_local global %struct.cred* null, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"cifs idmap keyring: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_cifs_idmap() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.cred*, align 8
  %3 = alloca %struct.key*, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cifs_idmap_key_type, i32 0, i32 0), align 4
  %6 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = call %struct.cred* @prepare_kernel_cred(i32* null)
  store %struct.cred* %7, %struct.cred** %2, align 8
  %8 = load %struct.cred*, %struct.cred** %2, align 8
  %9 = icmp ne %struct.cred* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %0
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %1, align 4
  br label %60

13:                                               ; preds = %0
  %14 = load %struct.cred*, %struct.cred** %2, align 8
  %15 = load i32, i32* @KEY_POS_ALL, align 4
  %16 = load i32, i32* @KEY_POS_SETATTR, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = load i32, i32* @KEY_USR_VIEW, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @KEY_USR_READ, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @KEY_ALLOC_NOT_IN_QUOTA, align 4
  %24 = call %struct.key* @key_alloc(i32* @key_type_keyring, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0, %struct.cred* %14, i32 %22, i32 %23)
  store %struct.key* %24, %struct.key** %3, align 8
  %25 = load %struct.key*, %struct.key** %3, align 8
  %26 = call i64 @IS_ERR(%struct.key* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %13
  %29 = load %struct.key*, %struct.key** %3, align 8
  %30 = call i32 @PTR_ERR(%struct.key* %29)
  store i32 %30, i32* %4, align 4
  br label %56

31:                                               ; preds = %13
  %32 = load %struct.key*, %struct.key** %3, align 8
  %33 = call i32 @key_instantiate_and_link(%struct.key* %32, i32* null, i32 0, i32* null, i32* null)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %53

37:                                               ; preds = %31
  %38 = call i32 @register_key_type(%struct.TYPE_3__* @cifs_idmap_key_type)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %53

42:                                               ; preds = %37
  %43 = load %struct.key*, %struct.key** %3, align 8
  %44 = load %struct.cred*, %struct.cred** %2, align 8
  %45 = getelementptr inbounds %struct.cred, %struct.cred* %44, i32 0, i32 1
  store %struct.key* %43, %struct.key** %45, align 8
  %46 = load i32, i32* @KEY_REQKEY_DEFL_THREAD_KEYRING, align 4
  %47 = load %struct.cred*, %struct.cred** %2, align 8
  %48 = getelementptr inbounds %struct.cred, %struct.cred* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.cred*, %struct.cred** %2, align 8
  store %struct.cred* %49, %struct.cred** @root_cred, align 8
  %50 = load %struct.key*, %struct.key** %3, align 8
  %51 = call i32 @key_serial(%struct.key* %50)
  %52 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  store i32 0, i32* %1, align 4
  br label %60

53:                                               ; preds = %41, %36
  %54 = load %struct.key*, %struct.key** %3, align 8
  %55 = call i32 @key_put(%struct.key* %54)
  br label %56

56:                                               ; preds = %53, %28
  %57 = load %struct.cred*, %struct.cred** %2, align 8
  %58 = call i32 @put_cred(%struct.cred* %57)
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %1, align 4
  br label %60

60:                                               ; preds = %56, %42, %10
  %61 = load i32, i32* %1, align 4
  ret i32 %61
}

declare dso_local i32 @cFYI(i32, i8*, i32) #1

declare dso_local %struct.cred* @prepare_kernel_cred(i32*) #1

declare dso_local %struct.key* @key_alloc(i32*, i8*, i32, i32, %struct.cred*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @PTR_ERR(%struct.key*) #1

declare dso_local i32 @key_instantiate_and_link(%struct.key*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @register_key_type(%struct.TYPE_3__*) #1

declare dso_local i32 @key_serial(%struct.key*) #1

declare dso_local i32 @key_put(%struct.key*) #1

declare dso_local i32 @put_cred(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
