; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_cifs_sb_tlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_cifs_sb_tlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcon_link = type { %struct.tcon_link*, i32, i64, i32 }
%struct.cifs_sb_info = type { i32, i32, i32 }

@CIFS_MOUNT_MULTIUSER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@TCON_LINK_PENDING = common dso_local global i32 0, align 4
@TCON_LINK_IN_TREE = common dso_local global i32 0, align 4
@cifs_sb_tcon_pending_wait = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@TLINK_ERROR_EXPIRE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info* %0) #0 {
  %2 = alloca %struct.tcon_link*, align 8
  %3 = alloca %struct.cifs_sb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcon_link*, align 8
  %7 = alloca %struct.tcon_link*, align 8
  store %struct.cifs_sb_info* %0, %struct.cifs_sb_info** %3, align 8
  %8 = call i32 (...) @current_fsuid()
  store i32 %8, i32* %5, align 4
  %9 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %3, align 8
  %10 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @CIFS_MOUNT_MULTIUSER, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %3, align 8
  %17 = call %struct.tcon_link* @cifs_sb_master_tlink(%struct.cifs_sb_info* %16)
  %18 = call %struct.tcon_link* @cifs_get_tlink(%struct.tcon_link* %17)
  store %struct.tcon_link* %18, %struct.tcon_link** %2, align 8
  br label %165

19:                                               ; preds = %1
  %20 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %3, align 8
  %21 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %20, i32 0, i32 1
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %3, align 8
  %24 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %23, i32 0, i32 2
  %25 = load i32, i32* %5, align 4
  %26 = call %struct.tcon_link* @tlink_rb_search(i32* %24, i32 %25)
  store %struct.tcon_link* %26, %struct.tcon_link** %6, align 8
  %27 = load %struct.tcon_link*, %struct.tcon_link** %6, align 8
  %28 = icmp ne %struct.tcon_link* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load %struct.tcon_link*, %struct.tcon_link** %6, align 8
  %31 = call %struct.tcon_link* @cifs_get_tlink(%struct.tcon_link* %30)
  br label %32

32:                                               ; preds = %29, %19
  %33 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %3, align 8
  %34 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %33, i32 0, i32 1
  %35 = call i32 @spin_unlock(i32* %34)
  %36 = load %struct.tcon_link*, %struct.tcon_link** %6, align 8
  %37 = icmp eq %struct.tcon_link* %36, null
  br i1 %37, label %38, label %92

38:                                               ; preds = %32
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.tcon_link* @kzalloc(i32 32, i32 %39)
  store %struct.tcon_link* %40, %struct.tcon_link** %7, align 8
  %41 = load %struct.tcon_link*, %struct.tcon_link** %7, align 8
  %42 = icmp eq %struct.tcon_link* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  %46 = call %struct.tcon_link* @ERR_PTR(i32 %45)
  store %struct.tcon_link* %46, %struct.tcon_link** %2, align 8
  br label %165

47:                                               ; preds = %38
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.tcon_link*, %struct.tcon_link** %7, align 8
  %50 = getelementptr inbounds %struct.tcon_link, %struct.tcon_link* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @EACCES, align 4
  %52 = sub nsw i32 0, %51
  %53 = call %struct.tcon_link* @ERR_PTR(i32 %52)
  %54 = load %struct.tcon_link*, %struct.tcon_link** %7, align 8
  %55 = getelementptr inbounds %struct.tcon_link, %struct.tcon_link* %54, i32 0, i32 0
  store %struct.tcon_link* %53, %struct.tcon_link** %55, align 8
  %56 = load i32, i32* @TCON_LINK_PENDING, align 4
  %57 = load %struct.tcon_link*, %struct.tcon_link** %7, align 8
  %58 = getelementptr inbounds %struct.tcon_link, %struct.tcon_link* %57, i32 0, i32 1
  %59 = call i32 @set_bit(i32 %56, i32* %58)
  %60 = load i32, i32* @TCON_LINK_IN_TREE, align 4
  %61 = load %struct.tcon_link*, %struct.tcon_link** %7, align 8
  %62 = getelementptr inbounds %struct.tcon_link, %struct.tcon_link* %61, i32 0, i32 1
  %63 = call i32 @set_bit(i32 %60, i32* %62)
  %64 = load %struct.tcon_link*, %struct.tcon_link** %7, align 8
  %65 = call %struct.tcon_link* @cifs_get_tlink(%struct.tcon_link* %64)
  %66 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %3, align 8
  %67 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %66, i32 0, i32 1
  %68 = call i32 @spin_lock(i32* %67)
  %69 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %3, align 8
  %70 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %69, i32 0, i32 2
  %71 = load i32, i32* %5, align 4
  %72 = call %struct.tcon_link* @tlink_rb_search(i32* %70, i32 %71)
  store %struct.tcon_link* %72, %struct.tcon_link** %6, align 8
  %73 = load %struct.tcon_link*, %struct.tcon_link** %6, align 8
  %74 = icmp ne %struct.tcon_link* %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %47
  %76 = load %struct.tcon_link*, %struct.tcon_link** %6, align 8
  %77 = call %struct.tcon_link* @cifs_get_tlink(%struct.tcon_link* %76)
  %78 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %3, align 8
  %79 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %78, i32 0, i32 1
  %80 = call i32 @spin_unlock(i32* %79)
  %81 = load %struct.tcon_link*, %struct.tcon_link** %7, align 8
  %82 = call i32 @kfree(%struct.tcon_link* %81)
  br label %93

83:                                               ; preds = %47
  %84 = load %struct.tcon_link*, %struct.tcon_link** %7, align 8
  store %struct.tcon_link* %84, %struct.tcon_link** %6, align 8
  %85 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %3, align 8
  %86 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %85, i32 0, i32 2
  %87 = load %struct.tcon_link*, %struct.tcon_link** %6, align 8
  %88 = call i32 @tlink_rb_insert(i32* %86, %struct.tcon_link* %87)
  %89 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %3, align 8
  %90 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %89, i32 0, i32 1
  %91 = call i32 @spin_unlock(i32* %90)
  br label %138

92:                                               ; preds = %32
  br label %93

93:                                               ; preds = %136, %92, %75
  %94 = load %struct.tcon_link*, %struct.tcon_link** %6, align 8
  %95 = getelementptr inbounds %struct.tcon_link, %struct.tcon_link* %94, i32 0, i32 1
  %96 = load i32, i32* @TCON_LINK_PENDING, align 4
  %97 = load i32, i32* @cifs_sb_tcon_pending_wait, align 4
  %98 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %99 = call i32 @wait_on_bit(i32* %95, i32 %96, i32 %97, i32 %98)
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* %4, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %93
  %103 = load %struct.tcon_link*, %struct.tcon_link** %6, align 8
  %104 = call i32 @cifs_put_tlink(%struct.tcon_link* %103)
  %105 = load i32, i32* %4, align 4
  %106 = call %struct.tcon_link* @ERR_PTR(i32 %105)
  store %struct.tcon_link* %106, %struct.tcon_link** %2, align 8
  br label %165

107:                                              ; preds = %93
  %108 = load %struct.tcon_link*, %struct.tcon_link** %6, align 8
  %109 = getelementptr inbounds %struct.tcon_link, %struct.tcon_link* %108, i32 0, i32 0
  %110 = load %struct.tcon_link*, %struct.tcon_link** %109, align 8
  %111 = call i64 @IS_ERR(%struct.tcon_link* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %107
  %114 = load %struct.tcon_link*, %struct.tcon_link** %6, align 8
  store %struct.tcon_link* %114, %struct.tcon_link** %2, align 8
  br label %165

115:                                              ; preds = %107
  %116 = load i32, i32* @jiffies, align 4
  %117 = load %struct.tcon_link*, %struct.tcon_link** %6, align 8
  %118 = getelementptr inbounds %struct.tcon_link, %struct.tcon_link* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @TLINK_ERROR_EXPIRE, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i64 @time_before(i32 %116, i64 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %115
  %125 = load %struct.tcon_link*, %struct.tcon_link** %6, align 8
  %126 = call i32 @cifs_put_tlink(%struct.tcon_link* %125)
  %127 = load i32, i32* @EACCES, align 4
  %128 = sub nsw i32 0, %127
  %129 = call %struct.tcon_link* @ERR_PTR(i32 %128)
  store %struct.tcon_link* %129, %struct.tcon_link** %2, align 8
  br label %165

130:                                              ; preds = %115
  %131 = load i32, i32* @TCON_LINK_PENDING, align 4
  %132 = load %struct.tcon_link*, %struct.tcon_link** %6, align 8
  %133 = getelementptr inbounds %struct.tcon_link, %struct.tcon_link* %132, i32 0, i32 1
  %134 = call i64 @test_and_set_bit(i32 %131, i32* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  br label %93

137:                                              ; preds = %130
  br label %138

138:                                              ; preds = %137, %83
  %139 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %3, align 8
  %140 = load i32, i32* %5, align 4
  %141 = call %struct.tcon_link* @cifs_construct_tcon(%struct.cifs_sb_info* %139, i32 %140)
  %142 = load %struct.tcon_link*, %struct.tcon_link** %6, align 8
  %143 = getelementptr inbounds %struct.tcon_link, %struct.tcon_link* %142, i32 0, i32 0
  store %struct.tcon_link* %141, %struct.tcon_link** %143, align 8
  %144 = load i32, i32* @TCON_LINK_PENDING, align 4
  %145 = load %struct.tcon_link*, %struct.tcon_link** %6, align 8
  %146 = getelementptr inbounds %struct.tcon_link, %struct.tcon_link* %145, i32 0, i32 1
  %147 = call i32 @clear_bit(i32 %144, i32* %146)
  %148 = load %struct.tcon_link*, %struct.tcon_link** %6, align 8
  %149 = getelementptr inbounds %struct.tcon_link, %struct.tcon_link* %148, i32 0, i32 1
  %150 = load i32, i32* @TCON_LINK_PENDING, align 4
  %151 = call i32 @wake_up_bit(i32* %149, i32 %150)
  %152 = load %struct.tcon_link*, %struct.tcon_link** %6, align 8
  %153 = getelementptr inbounds %struct.tcon_link, %struct.tcon_link* %152, i32 0, i32 0
  %154 = load %struct.tcon_link*, %struct.tcon_link** %153, align 8
  %155 = call i64 @IS_ERR(%struct.tcon_link* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %138
  %158 = load %struct.tcon_link*, %struct.tcon_link** %6, align 8
  %159 = call i32 @cifs_put_tlink(%struct.tcon_link* %158)
  %160 = load i32, i32* @EACCES, align 4
  %161 = sub nsw i32 0, %160
  %162 = call %struct.tcon_link* @ERR_PTR(i32 %161)
  store %struct.tcon_link* %162, %struct.tcon_link** %2, align 8
  br label %165

163:                                              ; preds = %138
  %164 = load %struct.tcon_link*, %struct.tcon_link** %6, align 8
  store %struct.tcon_link* %164, %struct.tcon_link** %2, align 8
  br label %165

165:                                              ; preds = %163, %157, %124, %113, %102, %43, %15
  %166 = load %struct.tcon_link*, %struct.tcon_link** %2, align 8
  ret %struct.tcon_link* %166
}

declare dso_local i32 @current_fsuid(...) #1

declare dso_local %struct.tcon_link* @cifs_get_tlink(%struct.tcon_link*) #1

declare dso_local %struct.tcon_link* @cifs_sb_master_tlink(%struct.cifs_sb_info*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.tcon_link* @tlink_rb_search(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.tcon_link* @kzalloc(i32, i32) #1

declare dso_local %struct.tcon_link* @ERR_PTR(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @kfree(%struct.tcon_link*) #1

declare dso_local i32 @tlink_rb_insert(i32*, %struct.tcon_link*) #1

declare dso_local i32 @wait_on_bit(i32*, i32, i32, i32) #1

declare dso_local i32 @cifs_put_tlink(%struct.tcon_link*) #1

declare dso_local i64 @IS_ERR(%struct.tcon_link*) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local %struct.tcon_link* @cifs_construct_tcon(%struct.cifs_sb_info*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @wake_up_bit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
