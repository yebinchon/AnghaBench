; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_dir.c___ncp_lookup_validate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_dir.c___ncp_lookup_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode*, %struct.TYPE_9__*, %struct.TYPE_7__ }
%struct.inode = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ncp_server = type { i32 }
%struct.ncp_entry_info = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_11__ = type { i64 }

@NCP_MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"ncp_lookup_validate: %s/%s not valid, age=%ld, server lookup\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"ncp_lookup_validate: looked for %s/%s, res=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"ncp_lookup_validate: found, but dirEntNum changed\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"ncp_lookup_validate: result=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*)* @__ncp_lookup_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ncp_lookup_validate(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.ncp_server*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ncp_entry_info, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* @NCP_MAXPATHLEN, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = load %struct.dentry*, %struct.dentry** %2, align 8
  %18 = call %struct.dentry* @dget_parent(%struct.dentry* %17)
  store %struct.dentry* %18, %struct.dentry** %4, align 8
  %19 = load %struct.dentry*, %struct.dentry** %4, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 0
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %5, align 8
  %22 = load %struct.dentry*, %struct.dentry** %2, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 0
  %24 = load %struct.inode*, %struct.inode** %23, align 8
  %25 = icmp ne %struct.inode* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  br label %139

27:                                               ; preds = %1
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = call %struct.ncp_server* @NCP_SERVER(%struct.inode* %28)
  store %struct.ncp_server* %29, %struct.ncp_server** %3, align 8
  %30 = load %struct.ncp_server*, %struct.ncp_server** %3, align 8
  %31 = call i32 @ncp_conn_valid(%struct.ncp_server* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  br label %139

34:                                               ; preds = %27
  %35 = load %struct.ncp_server*, %struct.ncp_server** %3, align 8
  %36 = load %struct.dentry*, %struct.dentry** %2, align 8
  %37 = call i32 @NCP_TEST_AGE(%struct.ncp_server* %35, %struct.dentry* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %139

41:                                               ; preds = %34
  %42 = load %struct.dentry*, %struct.dentry** %2, align 8
  %43 = getelementptr inbounds %struct.dentry, %struct.dentry* %42, i32 0, i32 1
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dentry*, %struct.dentry** %2, align 8
  %49 = getelementptr inbounds %struct.dentry, %struct.dentry* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.dentry*, %struct.dentry** %2, align 8
  %53 = call i32 @NCP_GET_AGE(%struct.dentry* %52)
  %54 = call i32 (i8*, ...) @DDPRINTK(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %51, i32 %53)
  %55 = mul nuw i64 4, %14
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %9, align 4
  %57 = load %struct.inode*, %struct.inode** %5, align 8
  %58 = call i64 @ncp_is_server_root(%struct.inode* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %41
  %61 = load %struct.ncp_server*, %struct.ncp_server** %3, align 8
  %62 = load %struct.dentry*, %struct.dentry** %2, align 8
  %63 = getelementptr inbounds %struct.dentry, %struct.dentry* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.dentry*, %struct.dentry** %2, align 8
  %67 = getelementptr inbounds %struct.dentry, %struct.dentry* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @ncp_io2vol(%struct.ncp_server* %61, i32* %16, i32* %9, i32 %65, i32 %69, i32 1)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %60
  %74 = load %struct.ncp_server*, %struct.ncp_server** %3, align 8
  %75 = getelementptr inbounds %struct.ncp_entry_info, %struct.ncp_entry_info* %6, i32 0, i32 0
  %76 = call i32 @ncp_lookup_volume(%struct.ncp_server* %74, i32* %16, %struct.TYPE_10__* %75)
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %73, %60
  br label %102

78:                                               ; preds = %41
  %79 = load %struct.ncp_server*, %struct.ncp_server** %3, align 8
  %80 = load %struct.dentry*, %struct.dentry** %2, align 8
  %81 = getelementptr inbounds %struct.dentry, %struct.dentry* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.dentry*, %struct.dentry** %2, align 8
  %85 = getelementptr inbounds %struct.dentry, %struct.dentry* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.inode*, %struct.inode** %5, align 8
  %89 = call i32 @ncp_preserve_case(%struct.inode* %88)
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = call i32 @ncp_io2vol(%struct.ncp_server* %79, i32* %16, i32* %9, i32 %83, i32 %87, i32 %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %78
  %97 = load %struct.ncp_server*, %struct.ncp_server** %3, align 8
  %98 = load %struct.inode*, %struct.inode** %5, align 8
  %99 = getelementptr inbounds %struct.ncp_entry_info, %struct.ncp_entry_info* %6, i32 0, i32 0
  %100 = call i32 @ncp_obtain_info(%struct.ncp_server* %97, %struct.inode* %98, i32* %16, %struct.TYPE_10__* %99)
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %96, %78
  br label %102

102:                                              ; preds = %101, %77
  %103 = getelementptr inbounds %struct.ncp_entry_info, %struct.ncp_entry_info* %6, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = getelementptr inbounds %struct.ncp_entry_info, %struct.ncp_entry_info* %6, i32 0, i32 1
  store i32 %105, i32* %106, align 8
  %107 = load %struct.dentry*, %struct.dentry** %2, align 8
  %108 = getelementptr inbounds %struct.dentry, %struct.dentry* %107, i32 0, i32 1
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i32 (i8*, ...) @DDPRINTK(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %112, i32* %16, i32 %113)
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %138, label %117

117:                                              ; preds = %102
  %118 = getelementptr inbounds %struct.ncp_entry_info, %struct.ncp_entry_info* %6, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.dentry*, %struct.dentry** %2, align 8
  %122 = getelementptr inbounds %struct.dentry, %struct.dentry* %121, i32 0, i32 0
  %123 = load %struct.inode*, %struct.inode** %122, align 8
  %124 = call %struct.TYPE_11__* @NCP_FINFO(%struct.inode* %123)
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %120, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %117
  %129 = load %struct.dentry*, %struct.dentry** %2, align 8
  %130 = call i32 @ncp_new_dentry(%struct.dentry* %129)
  store i32 1, i32* %8, align 4
  br label %133

131:                                              ; preds = %117
  %132 = call i32 (i8*, ...) @DDPRINTK(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %133

133:                                              ; preds = %131, %128
  %134 = load %struct.dentry*, %struct.dentry** %2, align 8
  %135 = getelementptr inbounds %struct.dentry, %struct.dentry* %134, i32 0, i32 0
  %136 = load %struct.inode*, %struct.inode** %135, align 8
  %137 = call i32 @ncp_update_inode2(%struct.inode* %136, %struct.ncp_entry_info* %6)
  br label %138

138:                                              ; preds = %133, %102
  br label %139

139:                                              ; preds = %138, %40, %33, %26
  %140 = load i32, i32* %8, align 4
  %141 = call i32 (i8*, ...) @DDPRINTK(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %140)
  %142 = load %struct.dentry*, %struct.dentry** %4, align 8
  %143 = call i32 @dput(%struct.dentry* %142)
  %144 = load i32, i32* %8, align 4
  %145 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %145)
  ret i32 %144
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.dentry* @dget_parent(%struct.dentry*) #2

declare dso_local %struct.ncp_server* @NCP_SERVER(%struct.inode*) #2

declare dso_local i32 @ncp_conn_valid(%struct.ncp_server*) #2

declare dso_local i32 @NCP_TEST_AGE(%struct.ncp_server*, %struct.dentry*) #2

declare dso_local i32 @DDPRINTK(i8*, ...) #2

declare dso_local i32 @NCP_GET_AGE(%struct.dentry*) #2

declare dso_local i64 @ncp_is_server_root(%struct.inode*) #2

declare dso_local i32 @ncp_io2vol(%struct.ncp_server*, i32*, i32*, i32, i32, i32) #2

declare dso_local i32 @ncp_lookup_volume(%struct.ncp_server*, i32*, %struct.TYPE_10__*) #2

declare dso_local i32 @ncp_preserve_case(%struct.inode*) #2

declare dso_local i32 @ncp_obtain_info(%struct.ncp_server*, %struct.inode*, i32*, %struct.TYPE_10__*) #2

declare dso_local %struct.TYPE_11__* @NCP_FINFO(%struct.inode*) #2

declare dso_local i32 @ncp_new_dentry(%struct.dentry*) #2

declare dso_local i32 @ncp_update_inode2(%struct.inode*, %struct.ncp_entry_info*) #2

declare dso_local i32 @dput(%struct.dentry*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
