; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_clone_mnt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_clone_mnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32, %struct.vfsmount*, i32, i32, i32, %struct.vfsmount*, i32, i32, %struct.super_block*, i32, i64, i32 }
%struct.super_block = type { i32 }
%struct.dentry = type { i32 }

@CL_SLAVE = common dso_local global i32 0, align 4
@CL_PRIVATE = common dso_local global i32 0, align 4
@CL_MAKE_SHARED = common dso_local global i32 0, align 4
@CL_PROPAGATION = common dso_local global i32 0, align 4
@CL_EXPIRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vfsmount* (%struct.vfsmount*, %struct.dentry*, i32)* @clone_mnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vfsmount* @clone_mnt(%struct.vfsmount* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca %struct.vfsmount*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.vfsmount*, align 8
  %10 = alloca i32, align 4
  store %struct.vfsmount* %0, %struct.vfsmount** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %12 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %11, i32 0, i32 8
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  store %struct.super_block* %13, %struct.super_block** %8, align 8
  %14 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %15 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %14, i32 0, i32 11
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.vfsmount* @alloc_vfsmnt(i32 %16)
  store %struct.vfsmount* %17, %struct.vfsmount** %9, align 8
  %18 = load %struct.vfsmount*, %struct.vfsmount** %9, align 8
  %19 = icmp ne %struct.vfsmount* %18, null
  br i1 %19, label %20, label %155

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @CL_SLAVE, align 4
  %23 = load i32, i32* @CL_PRIVATE, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.vfsmount*, %struct.vfsmount** %9, align 8
  %29 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %28, i32 0, i32 10
  store i64 0, i64* %29, align 8
  br label %36

30:                                               ; preds = %20
  %31 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %32 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %31, i32 0, i32 10
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.vfsmount*, %struct.vfsmount** %9, align 8
  %35 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %34, i32 0, i32 10
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %30, %27
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @CL_MAKE_SHARED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %36
  %42 = load %struct.vfsmount*, %struct.vfsmount** %9, align 8
  %43 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %42, i32 0, i32 10
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %41
  %47 = load %struct.vfsmount*, %struct.vfsmount** %9, align 8
  %48 = call i32 @mnt_alloc_group_id(%struct.vfsmount* %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %157

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52, %41, %36
  %54 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %55 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %54, i32 0, i32 9
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.vfsmount*, %struct.vfsmount** %9, align 8
  %58 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %57, i32 0, i32 9
  store i32 %56, i32* %58, align 8
  %59 = load %struct.super_block*, %struct.super_block** %8, align 8
  %60 = getelementptr inbounds %struct.super_block, %struct.super_block* %59, i32 0, i32 0
  %61 = call i32 @atomic_inc(i32* %60)
  %62 = load %struct.super_block*, %struct.super_block** %8, align 8
  %63 = load %struct.vfsmount*, %struct.vfsmount** %9, align 8
  %64 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %63, i32 0, i32 8
  store %struct.super_block* %62, %struct.super_block** %64, align 8
  %65 = load %struct.dentry*, %struct.dentry** %6, align 8
  %66 = call i32 @dget(%struct.dentry* %65)
  %67 = load %struct.vfsmount*, %struct.vfsmount** %9, align 8
  %68 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %67, i32 0, i32 6
  store i32 %66, i32* %68, align 8
  %69 = load %struct.vfsmount*, %struct.vfsmount** %9, align 8
  %70 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.vfsmount*, %struct.vfsmount** %9, align 8
  %73 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %72, i32 0, i32 7
  store i32 %71, i32* %73, align 4
  %74 = load %struct.vfsmount*, %struct.vfsmount** %9, align 8
  %75 = load %struct.vfsmount*, %struct.vfsmount** %9, align 8
  %76 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %75, i32 0, i32 5
  store %struct.vfsmount* %74, %struct.vfsmount** %76, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @CL_SLAVE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %53
  %82 = load %struct.vfsmount*, %struct.vfsmount** %9, align 8
  %83 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %82, i32 0, i32 2
  %84 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %85 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %84, i32 0, i32 4
  %86 = call i32 @list_add(i32* %83, i32* %85)
  %87 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %88 = load %struct.vfsmount*, %struct.vfsmount** %9, align 8
  %89 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %88, i32 0, i32 1
  store %struct.vfsmount* %87, %struct.vfsmount** %89, align 8
  %90 = load %struct.vfsmount*, %struct.vfsmount** %9, align 8
  %91 = call i32 @CLEAR_MNT_SHARED(%struct.vfsmount* %90)
  br label %129

92:                                               ; preds = %53
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @CL_PRIVATE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %128, label %97

97:                                               ; preds = %92
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @CL_PROPAGATION, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %97
  %103 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %104 = call i64 @IS_MNT_SHARED(%struct.vfsmount* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %102, %97
  %107 = load %struct.vfsmount*, %struct.vfsmount** %9, align 8
  %108 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %107, i32 0, i32 3
  %109 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %110 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %109, i32 0, i32 3
  %111 = call i32 @list_add(i32* %108, i32* %110)
  br label %112

112:                                              ; preds = %106, %102
  %113 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %114 = call i64 @IS_MNT_SLAVE(%struct.vfsmount* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %112
  %117 = load %struct.vfsmount*, %struct.vfsmount** %9, align 8
  %118 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %117, i32 0, i32 2
  %119 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %120 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %119, i32 0, i32 2
  %121 = call i32 @list_add(i32* %118, i32* %120)
  br label %122

122:                                              ; preds = %116, %112
  %123 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %124 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %123, i32 0, i32 1
  %125 = load %struct.vfsmount*, %struct.vfsmount** %124, align 8
  %126 = load %struct.vfsmount*, %struct.vfsmount** %9, align 8
  %127 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %126, i32 0, i32 1
  store %struct.vfsmount* %125, %struct.vfsmount** %127, align 8
  br label %128

128:                                              ; preds = %122, %92
  br label %129

129:                                              ; preds = %128, %81
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* @CL_MAKE_SHARED, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load %struct.vfsmount*, %struct.vfsmount** %9, align 8
  %136 = call i32 @set_mnt_shared(%struct.vfsmount* %135)
  br label %137

137:                                              ; preds = %134, %129
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* @CL_EXPIRE, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %154

142:                                              ; preds = %137
  %143 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %144 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %143, i32 0, i32 0
  %145 = call i32 @list_empty(i32* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %153, label %147

147:                                              ; preds = %142
  %148 = load %struct.vfsmount*, %struct.vfsmount** %9, align 8
  %149 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %148, i32 0, i32 0
  %150 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %151 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %150, i32 0, i32 0
  %152 = call i32 @list_add(i32* %149, i32* %151)
  br label %153

153:                                              ; preds = %147, %142
  br label %154

154:                                              ; preds = %153, %137
  br label %155

155:                                              ; preds = %154, %3
  %156 = load %struct.vfsmount*, %struct.vfsmount** %9, align 8
  store %struct.vfsmount* %156, %struct.vfsmount** %4, align 8
  br label %160

157:                                              ; preds = %51
  %158 = load %struct.vfsmount*, %struct.vfsmount** %9, align 8
  %159 = call i32 @free_vfsmnt(%struct.vfsmount* %158)
  store %struct.vfsmount* null, %struct.vfsmount** %4, align 8
  br label %160

160:                                              ; preds = %157, %155
  %161 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  ret %struct.vfsmount* %161
}

declare dso_local %struct.vfsmount* @alloc_vfsmnt(i32) #1

declare dso_local i32 @mnt_alloc_group_id(%struct.vfsmount*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @CLEAR_MNT_SHARED(%struct.vfsmount*) #1

declare dso_local i64 @IS_MNT_SHARED(%struct.vfsmount*) #1

declare dso_local i64 @IS_MNT_SLAVE(%struct.vfsmount*) #1

declare dso_local i32 @set_mnt_shared(%struct.vfsmount*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @free_vfsmnt(%struct.vfsmount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
