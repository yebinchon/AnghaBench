; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_super.c_ext3_get_journal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_super.c_ext3_get_journal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.inode = type { i32, i32, i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"error: no journal found\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"error: journal inode is deleted\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Journal inode found at %p: %Ld bytes\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"error: invalid journal inode\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"error: could not load journal inode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (%struct.super_block*, i32)* @ext3_get_journal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @ext3_get_journal(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.super_block*, %struct.super_block** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.inode* @ext3_iget(%struct.super_block* %8, i32 %9)
  store %struct.inode* %10, %struct.inode** %6, align 8
  %11 = load %struct.inode*, %struct.inode** %6, align 8
  %12 = call i64 @IS_ERR(%struct.inode* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.super_block*, %struct.super_block** %4, align 8
  %16 = load i32, i32* @KERN_ERR, align 4
  %17 = call i32 @ext3_msg(%struct.super_block* %15, i32 %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %67

18:                                               ; preds = %2
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %18
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = call i32 @make_bad_inode(%struct.inode* %24)
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = call i32 @iput(%struct.inode* %26)
  %28 = load %struct.super_block*, %struct.super_block** %4, align 8
  %29 = load i32, i32* @KERN_ERR, align 4
  %30 = call i32 @ext3_msg(%struct.super_block* %28, i32 %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %67

31:                                               ; preds = %18
  %32 = load %struct.inode*, %struct.inode** %6, align 8
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @jbd_debug(i32 2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), %struct.inode* %32, i32 %35)
  %37 = load %struct.inode*, %struct.inode** %6, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @S_ISREG(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %31
  %43 = load %struct.super_block*, %struct.super_block** %4, align 8
  %44 = load i32, i32* @KERN_ERR, align 4
  %45 = call i32 @ext3_msg(%struct.super_block* %43, i32 %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %46 = load %struct.inode*, %struct.inode** %6, align 8
  %47 = call i32 @iput(%struct.inode* %46)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %67

48:                                               ; preds = %31
  %49 = load %struct.inode*, %struct.inode** %6, align 8
  %50 = call %struct.TYPE_5__* @journal_init_inode(%struct.inode* %49)
  store %struct.TYPE_5__* %50, %struct.TYPE_5__** %7, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %52 = icmp ne %struct.TYPE_5__* %51, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %48
  %54 = load %struct.super_block*, %struct.super_block** %4, align 8
  %55 = load i32, i32* @KERN_ERR, align 4
  %56 = call i32 @ext3_msg(%struct.super_block* %54, i32 %55, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %57 = load %struct.inode*, %struct.inode** %6, align 8
  %58 = call i32 @iput(%struct.inode* %57)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %67

59:                                               ; preds = %48
  %60 = load %struct.super_block*, %struct.super_block** %4, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store %struct.super_block* %60, %struct.super_block** %62, align 8
  %63 = load %struct.super_block*, %struct.super_block** %4, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %65 = call i32 @ext3_init_journal_params(%struct.super_block* %63, %struct.TYPE_5__* %64)
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %66, %struct.TYPE_5__** %3, align 8
  br label %67

67:                                               ; preds = %59, %53, %42, %23, %14
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %68
}

declare dso_local %struct.inode* @ext3_iget(%struct.super_block*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @ext3_msg(%struct.super_block*, i32, i8*) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @jbd_debug(i32, i8*, %struct.inode*, i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local %struct.TYPE_5__* @journal_init_inode(%struct.inode*) #1

declare dso_local i32 @ext3_init_journal_params(%struct.super_block*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
